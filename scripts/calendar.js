$(document).ready(function() {

var calendarModel = {
    
    fbRef: new Firebase('https://event-calender.firebaseio.com/events'),
    currentParent: '',
    siteContainer: document.getElementById('calendar-container'),
    
    months: ['Januari', 'Februari', 'Mars', 'April', 'Maj', 'Juni',
             'Juli', 'Augusti', 'September', 'Oktober', 'November', 'December'
            ],
    daysInMonth: [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], 
    years: ['2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2024'],
    buttonTexts: ['Lägg till', 'Ta bort'],
    inputErrorSnippets: ['typ av händelse', 'plats för händelsen', 'address för händelsen'],
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
                    else if (calendarModel.daysInMonth[i] === 29 && j === 3 && k > 4) { 
                        td.style.display = 'none';
                    }
                    else if (calendarModel.daysInMonth[i] === 28 && j === 3 && k > 3) { 
                        td.style.display = 'none';
                    }

                    tr.appendChild(td); 

                    for (b = 0; b < 2; b++) { 

                        var button = document.createElement('button');
                            button.innerHTML = calendarModel.buttonTexts[b];

                        if (button.innerHTML === 'Lägg till') {
                            button.addEventListener('click', calendarController.toggleAddWindow); 
                        }
                        else {
                            button.addEventListener('click', calendarController.deleteSingle); 
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
                }()),
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
                    
                    function alertUser(snippet) {
                        alert('Informationen du angivit för ' + snippet + ' är för lång.');
                    }
                    
                    //Check if any input values are too long
                    for (i = 0; i < calendarModel.inputErrorSnippets.length; i++) {

                        if (userInput[0].length > 15) {
                            
                            return;
                        }
                        else if (userInput[1].length > 15) {
                            alert('Informationen du angivit för '
                            + calendarModel.inputErrorSnippets[1] + ' är för lång.');
                            return;
                        }
                        else if (userInput[2].length > 15) {
                            alert('Informationen du angivit för '
                            + calendarModel.inputErrorSnippets[2] + ' är för lång.');
                            return;
                        }
                        else {
                            var newRef = calendarModel.fbRef.child(userInput[4]);
                                newRef.set({
                                    eventType: userInput[0], 
                                    eventTime: userInput[1], 
                                    eventLocation: userInput[2], 
                                    eventAddress: userInput[3], 
                                    eventDay: userInput[4]
                                });
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
                    
                    var span = popup.getElementsByTagName('span');
                        span[0].addEventListener('click', function () {
                            popup.style.visibility = 'hidden';
                        });
                                                 
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
    deleteNodes: 
                function(paragraphs) {
                    for (i = paragraphs.length-1; i>=0; i--) { 
                        paragraphs[i].parentNode.removeChild(paragraphs[i]); 
                    }
                },
    deleteAll: 
                function() {
                    var paragraphs = document.getElementsByTagName('p');
                    
                    calendarController.deleteNodes(paragraphs);
                    calendarModel.fbRef.remove();
                },
    deleteSingle: 
                function() {

                    var parent = this.parentNode; 
                    var parentId = parent.id; 
                    var paragraphs = parent.getElementsByTagName('p');
                    
                    calendarController.deleteNodes(paragraphs);
                    
                    //Create a new Firebase reference that matches the parent ID
                    //And remove the data at this location
                    var removeData = new Firebase('https://event-calender.firebaseio.com/events/' + parentId);
                        removeData.remove(); 
                },
    confirmDelete: 
                function() {
        
                    var conf = confirm('Du håller på att ta bort alla händelser, detta kan inte göras ogjort. Är du säker att du vill fortsätta?');

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

                    calendarView.createCalendar(index);
                    calendarModel.getRedDaysFromAPI(selectedYear);

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