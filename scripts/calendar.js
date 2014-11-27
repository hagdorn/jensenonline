$(document).ready(function() {

var calendarModel = {
    
    fbRef: new Firebase('https://event-calender.firebaseio.com/events'),
    currentParent: '',
    siteContainer: $('#calendar-container'),
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
        
        var yearContainer = $('<div></div>');
            calendarModel.siteContainer.append(yearContainer);
            yearContainer.attr('id', calendarModel.years[year]);
        
        for (i = 0; i < calendarModel.months.length; i++) {
            
            var h1 = $('<h1></h1>');
                h1.attr('id', calendarModel.years[year] + calendarModel.months[i]); 
                h1.html(calendarModel.months[i] + ' ' + calendarModel.years[year]);
                yearContainer.append(h1); 

            var table = $('<table></table>');
                yearContainer.append(table);

            for (j = 0; j < 4; j++) {
                var tr = $('<tr></tr>'); 
                    table.append(tr);

                for (k = 0; k < 8; k++) {
                    var td = $('<td></td>');
                        
                        if (i < 9) {
                            if (num < 10) {
                                td.attr('id', calendarModel.years[year] + '-' + 0 + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.attr('id', calendarModel.years[year] + '-' + 0 + (i + 1) + '-' + num);
                            }
                        }
                        else {
                            if (num < 10) {
                                td.attr('id', calendarModel.years[year] + '-' + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.attr('id', calendarModel.years[year] + '-' + (i + 1) + '-' + num);
                            }
                        }
                    
                    var span = $('<span></span>'); 
                        span.html(num);
                        td.append(span);
                        num++;
                    
                    //Hide the spare tds depending on how many days the current month has
                    if (calendarModel.daysInMonth[i] === 31 && j === 3 && k > 6) {
                        td.css('display', 'none');
                    }
                    else if (calendarModel.daysInMonth[i] === 30 && j === 3 && k > 5) {
                        td.css('display', 'none');
                    }
                    else if (calendarModel.daysInMonth[i] === 29 && j === 3 && k > 4) { 
                        td.css('display', 'none');
                    }
                    else if (calendarModel.daysInMonth[i] === 28 && j === 3 && k > 3) { 
                        td.css('display', 'none');
                    }

                    tr.append(td); 

                    for (b = 0; b < 2; b++) { 

                        var button = $('<button></button>');
                            button.html(calendarModel.buttonTexts[b]);
                        
                        if (button.html() === 'Lägg till') {
                            button.on('click', calendarController.toggleAddWindow); 
                        }
                        else {
                            button.on('click', calendarController.deleteSingle); 
                        }

                        td.append(button);
                    }
                }
            }
            num = 1; 
        }
    },
    fillSelects: 
                (function() {
                    
                    var selectMonth = $('#month');
                    var selectYear = $('#year');
                    
                    function createOptions(category, element) {

                        for (i = 0; i < calendarModel[category].length; i++) {
                            var option = $('<option></option>');
                                option.html(calendarModel[category][i]);
                                option.val = option.html;
                                element.append(option);
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
                                    var currentDate = $('#' + propertyObject.datum + '');
                                    var firstSpan = $('span:first', currentDate);
                                        firstSpan.css('color', 'red');
                                    break;
                                }
                            }
                        }
                    }
                },
    addEventListnrs: 
                function() {

                    var addEventButton = $('#button'); 
                        addEventButton.on('click', calendarController.validateInput);

                    var deleteButton = $('#deleteButton');
                        deleteButton.on('click', calendarController.confirmDelete);

                    var showButton = $('#showButton');
                        showButton.on('click', calendarController.scrollToMonth);

                    var backToTopButton = $('#btt');
                        backToTopButton.on('click', calendarController.scrollToTop);
                },
    validateInput: 
                function() {
                    
                    var userInput = [
                        $('#event').val(),
                        $('#time').val(),
                        $('#location').val(),
                        $('#address').val(),
                        $(calendarModel.currentParent).attr('id')
                    ];
                    
                    function alertUser(snippet) {
                        alert('Informationen du angivit för ' + snippet + ' är för lång (max 15 tecken).');
                    }
                    
                    //Check if any input values are too long
                    for (i = 0; i < calendarModel.inputErrorSnippets.length; i++) {

                        if (userInput[0].length > 15) {
                            alertUser(calendarModel.inputErrorSnippets[0]);
                            return;
                        }
                        else if (userInput[1].length > 15) {
                            alertUser(calendarModel.inputErrorSnippets[1]);
                            return;
                        }
                        else if (userInput[2].length > 15) {
                            alertUser(calendarModel.inputErrorSnippets[2]);
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

                    var parent = $(this).parent();
                    var popup = $('#pop-up');
                    var typeOfEvent = $('#event');
                    var timeOfEvent = $('#time');
                    var locationOfEvent = $('#location');   
                    var addressOfEvent = $('#address'); 

                    //Set the inputs to be empty when we open popup window
                    typeOfEvent.val('');
                    timeOfEvent.val('');
                    locationOfEvent.val('');
                    addressOfEvent.val('');

                    if (popup.css('visibility') === 'visible') {
                        popup.css('visibility', 'hidden');
                    }
                    else {
                        popup.css('visibility', 'visible');
                    }
                    
                    var span = $('span:first', popup);
                        span.on('click', function () {
                            popup.css('visibility', 'hidden');
                        });
                                                 
                    calendarModel.currentParent = parent; 
                },
    showAddedEvent: 
                function(eventType, eventTime, eventLocation, eventAddress, dayOfEvent) {

                    var eventInfo = [eventType, eventTime, eventLocation, eventAddress];
                    var dayElement = $('#' + dayOfEvent);
                    var popup = $('#pop-up');
                        popup.css('visibility', 'hidden'); 

                    for (i = 0; i < 4; i++) {
                        var p = $('<p></p>');
                            p.html(eventInfo[i]);
                            dayElement.append(p); 
                    }
                },
    deleteNodes: 
                function(paragraphs) {
                    for (i = paragraphs.length-1; i>=0; i--) {
                        paragraphs[i].remove(); 
                    }
                },
    deleteAll: 
                function() {
                    var paragraphs = $('p', document).get();
                    
                    calendarController.deleteNodes(paragraphs);
                    calendarModel.fbRef.remove();
                },
    deleteSingle: 
                function() {

                    var parent = $(this).parent(); 
                    var parentId = parent.attr('id'); 
                    var paragraphs = $('p', parent);
                    
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
                    
                        calendarModel.siteContainer.children().not('#btt').remove();
                    
                },
    scrollToMonth: 
                function() {
        
                    var selectedYear = $('#year').find(':selected').text();
                    var selectedMonth = $('#month').find(':selected').text();
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
                    $('html, body').animate({ scrollTop: 0 }, 'slow');
                }
}

window.onload = calendarController.init;

});