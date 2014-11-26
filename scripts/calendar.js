$(document).ready(function() {

var calendarModel = {
    
    fbRef: new Firebase('https://event-calender.firebaseio.com/events'),
    currentParent: '',
    siteContainer: document.getElementById('calendar-container'),
    
    months: ['January', 'February', 'March', 'April', 'May', 'June',
             'July', 'August', 'September', 'October', 'November', 'December'
            ],
    daysInMonth: [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], 
    years: ['2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2024'],
    buttonTexts: ['Add', 'Delete'],
    inputErrorSnippets: ['type of event', 'location of the event', 'address of the event'],
    getRedDaysFromAPI: 
            function(year) {
                var xhr = new XMLHttpRequest();
                    xhr.open('GET', 'http://api.dryg.net/dagar/v2/' + year, false);
                    xhr.send();
                
                calendarController.markRedDays(xhr.responseText);
            }
}

var calendarView = {
    
    createCalendar: function(year) {

        var num = 1; 
        
        var yearContainer = document.createElement('div');
            calendarModel.siteContainer.appendChild(yearContainer);
            yearContainer.setAttribute('id', calendarModel.years[year]);
        
        for (i = 0; i < calendarModel.months.length; i++) {
            
            var h1 = document.createElement('h1');
                h1.setAttribute('id', calendarModel.years[year] + calendarModel.months[i]); 
                h1.innerHTML = calendarModel.months[i] + ' ' + calendarModel.years[year];
                yearContainer.appendChild(h1); 

            var table = document.createElement('table');
                yearContainer.appendChild(table);

            for (j = 0; j < 4; j++) {
                var tr = document.createElement('tr'); 
                    table.appendChild(tr);

                for (k = 0; k < 8; k++) {
                    var td = document.createElement('td');
                        
                        if (i < 9) {
                            if (num < 10) {
                                td.setAttribute('id', calendarModel.years[year] + '-' + 0 + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.setAttribute('id', calendarModel.years[year] + '-' + 0 + (i + 1) + '-' + num);
                            }
                        }
                        else {
                            if (num < 10) {
                                td.setAttribute('id', calendarModel.years[year] + '-' + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.setAttribute('id', calendarModel.years[year] + '-' + (i + 1) + '-' + num);
                            }
                        }
                    
                    var span = document.createElement('span'); 
                        span.innerHTML = num;
                        td.appendChild(span);
                        num++;
                    
                    //Hide the spare tds depending on how many days the current month has
                    if (calendarModel.daysInMonth[i] === 31 && j === 3 && k > 6) {
                        td.style.display = 'none';
                    }
                    else if (calendarModel.daysInMonth[i] === 30 && j === 3 && k > 5) {
                        td.style.display = 'none';
                    }
                    //If leap year
                    else if (calendarModel.daysInMonth[i] === 29 && j === 3 && k > 4) { 
                        td.style.display = 'none';
                    }
                    else if (calendarModel.daysInMonth[i] === 28 && j === 3 && k > 3) { 
                        td.style.display = 'none';
                    }

                    tr.appendChild(td); 

                    for (m = 0; m < 2; m++) { 

                        var button = document.createElement('button');
                            button.innerHTML = calendarModel.buttonTexts[m];

                        if (button.innerHTML === 'Add') {
                            button.addEventListener('click', calendarController.showEventAddWindow); 
                        }
                        else {
                            button.addEventListener('click', calendarController.deleteEvent); 
                        }

                        td.appendChild(button);
                    }
                }
            }
            num = 1; 
        }
    },
    fillSelects: 
                (function() {
                    
                    var selectMonth = document.getElementById('month');
                    var selectYear = document.getElementById('year');
                    
                    function createOptions(category, element) {

                        for (i = 0; i < calendarModel[category].length; i++) {
                            var option = document.createElement('option');
                                option.innerHTML = calendarModel[category][i];
                                option.value = option.innerHTML;
                                element.appendChild(option);
                        }
                    }

                    createOptions('years', selectYear);
                    createOptions('months', selectMonth);
                })(),
}

var calendarController = {
    
    init: 
                function() {
                    calendarView.createCalendar(0);
                    calendarModel.getRedDaysFromAPI(2015);
                    calendarController.addEventListnrs();
                },
    onChildAdded: 
                calendarModel.fbRef.on('child_added', function(snapshot) { 
                    var eventInfo = snapshot.val();
                    calendarController.showAddedEvent(eventInfo.eventType, 
                                                      eventInfo.eventTime, 
                                                      eventInfo.eventLocation, 
                                                      eventInfo.eventAddress, 
                                                      eventInfo.eventDay); 
                }),
    markRedDays: 
                function(APIresponse) {
                    var json = JSON.parse(APIresponse);
                    
                    for (item in json.dagar) {
                        var propertyObject = json.dagar[item];
                        
                        for (subitem in propertyObject) {
                            if (subitem === 'röd dag') {
                                var redDay = propertyObject[subitem];
                                
                                if (redDay === 'Ja') {
                                    var currentDate = document.getElementById(propertyObject.datum);
                                    var firstSpan = currentDate.getElementsByTagName('span')[0];
                                        firstSpan.style.color = 'red';
                                    break;
                                }
                            }
                        }
                    }
                },
    addEventListnrs: 
                function() {

                    var addEventButton = document.getElementById('button'); 
                        addEventButton.addEventListener('click', calendarController.validateInput);

                    var deleteButton = document.getElementById('deleteButton');
                        deleteButton.addEventListener('click', calendarController.confirmDelete);

                    var showButton = document.getElementById('showButton');
                        showButton.addEventListener('click', calendarController.scrollToMonth);

                    var backToTopButton = document.getElementById('btt');
                        backToTopButton.addEventListener('click', calendarController.scrollToTop);
                },
    validateInput: 
                function() {
                    
                    var userInput = [
                                document.getElementById('event').value,
                                document.getElementById('time').value,
                                document.getElementById('location').value,    
                                document.getElementById('address').value, 
                                calendarModel.currentParent.id
                    ];
                     
                    var newRef = calendarModel.fbRef.child(eventInfo[4]);
                        newRef.set({
                            eventType: eventInfo[0], 
                            eventTime: eventInfo[1], 
                            eventLocation: eventInfo[2], 
                            eventAddress: eventInfo[3], 
                            eventDay: eventInfo[4]
                        });
                    
                    //Check if any input values are too long
                    for (i = 0; i < calendarModel.inputErrorSnippets.length; i++) {

                        if (userInput[0].length > 21) {
                            alert('The information you have entered for ' + calendarModel.inputErrorSnippets[0]
                            + ' is too long.');
                            return;
                        }
                        else if (userInput[1].length > 21) {
                            alert('The information you have entered for ' + calendarModel.inputErrorSnippets[1]
                            + ' is too long.');
                            return;
                        }
                        else if (userInput[2].length > 21) {
                            alert('The information you have entered for ' + calendarModel.inputErrorSnippets[2]
                            + ' is too long.');
                            return;
                        }
                        
                        
                    } 
                },
    toggleAddWindow: 
                function() {

                    var parent = this.parentNode;
                    var popup = document.getElementById('pop-up');
                    var typeOfEvent = document.getElementById('event');
                    var timeOfEvent = document.getElementById('time');
                    var locationOfEvent = document.getElementById('location');   
                    var addressOfEvent = document.getElementById('address'); 

                    //Set the inputs to be empty when we open popup window
                    typeOfEvent.value = '';
                    timeOfEvent.value = '';
                    locationOfEvent.value = '';
                    addressOfEvent.value = '';

                    if (popup.style.visibility === 'visible') {
                        popup.style.visibility = 'hidden';
                    }
                    else {
                        popup.style.visibility = 'visible'; 
                    }

                    calendarModel.currentParent = parent; 
                },
    showAddedEvent: 
                function(eventType, eventTime, eventLocation, eventAddress, dayOfEvent) {

                    var eventInfo = [eventType, eventTime, eventLocation, eventAddress];
                    var dayElement = document.getElementById(dayOfEvent); 
                    var popup = document.getElementById('pop-up');
                        popup.style.visibility = 'hidden'; 

                    for (i = 0; i < 4; i++) {
                        var p = document.createElement('p');
                            p.innerHTML = eventInfo[i];
                            dayElement.appendChild(p); 
                    }
                },
    deleteAll: 
                function() {

                    //Remove all events from the page
                    var p_list = document.getElementsByTagName('p');

                    for (i = p_list.length-1; i>=0; i--) { 
                        p_list[i].parentNode.removeChild(p_list[i]); 
                    }

                    calendarModel.fbRef.remove();
                },
    deleteSingle: 
                function() {

                    var parent = this.parentNode; 
                    var parentId = parent.id; 

                    //Remove the event from the specific td
                    var p_list = parent.getElementsByTagName('p');

                    for (i = p_list.length-1; i>=0; i--) { 
                        p_list[i].parentNode.removeChild(p_list[i]);
                    }

                    //Create a new Firebase reference that matches the parent ID
                    //And remove the data at this location
                    var removeData = new Firebase('https://event-calender.firebaseio.com/events/' + parentId);
                        removeData.remove(); 
                },
    confirmDelete: 
                function() {
        
                    var conf = confirm('You are about to delete all events, this cannot be undone. Are you sure you want to continue?');

                    switch (conf) {

                        case true: calendarController.deleteAll();
                                   break;

                        case false: return; 
                                    break;
                    }
                },
    removeYearDiv: 
                function() {
        
                    while (calendarModel.siteContainer.firstChild) {
                        calendarModel.siteContainer.removeChild(calendarModel.siteContainer.firstChild);
                    }    
                },
    scrollToMonth: 
                function() {
        
                    var y = document.getElementById('year');
                    var selectedYear = y.options[y.selectedIndex].value;
                    var m = document.getElementById('month'); 
                    var selectedMonth = m.options[m.selectedIndex].value;
                    var index = calendarModel.years.indexOf(selectedYear);

                    calendarController.removeYearDiv();

                    calendarController.createCalendar(index);
                    calendarModel.redDays(selectedYear);

                    $('html, body').animate({
                        scrollTop: $('#' + selectedYear + selectedMonth).offset().top
                    }, 'slow');
                },
    scrollToTop: 
                function() {
                    $("html, body").animate({ scrollTop: 0 }, "slow");
                }
}

window.onload = calendarController.init;

});