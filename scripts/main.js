$(document).ready(function() {

    function init() {
        
        for (i = 0; i < menuModel.itemsWithDropDown.length; i++) {
            menuController.toggleDropDown(menuModel.itemsWithDropDown[i]);
        }
        
        calendarView.createCalendar(0);
        calendarModel.getRedDaysFromAPI(2015);
        calendarController.addEventListeners();
        bookingView.createScheme();
    }
    
/****** HEADER ******/
    
    var headerModel = {
        
        searchInput: $('#search-input'),
        searchHitsDiv: $('#dropdown-container'),
        ulScope: angular.element($('#matches-list')).scope()
    }
    
    var headerView = {
        //Insert code that creates header view here
    }
    
    var headerController = {
        
        addEventListeners: function() {
            
            headerModel.searchInput.on('keyup', headerController.siteSearch);
        },
        siteSearch: function(e) {
        
            var keyValue = String.fromCharCode(e.keyCode);
                keyValue = keyValue.toLowerCase() + keyValue.slice(1);    

            for (i = 0; i < scope.names.length; i++) {

                if (jQuery.inArray(keyValue, scope.names[i]) === -1) {
                    headerModel.searchHitsDiv.css('display', 'none');

                    if (e.keyCode === 8 && input.val().length === 0) {
                        headerModel.searchHitsDiv.css('display', 'none');
                    }
                    else if (e.keyCode === 8) {
                        headerModel.searchHitsDiv.css('display', 'block');
                        return;
                    }
                }
                else {
                    headerModel.searchHitsDiv.css('display', 'block');
                    return;
                }
            }
        }
    }
    
/****** MENU ******/
    
    var menuModel = {
        itemsWithDropDown: ['msg', 'mypages', 'tools', 'administration',
                            'contactinfo', 'education', 'surveys', 'help'
                           ]
        //See controllers.js for menu data
    }
    
    var menuView = {
        //This gets created via PHP
    }
    
    var menuController = {
        
        toggleDropDown: function (id) {
            
            $('#main-nav' + ' #' + id + '').hover(function() {
                $('#' + id + ' ul').stop().slideToggle();
            });
        },
        mainHoverEffect: (function () {
            
            $('.nav-items').hover(function() {
                $(this).stop().animate({ top: 5 }, 'fast');
            }, function() {
                $(this).stop().animate({ top: 0 }, 'fast');
            });
        }()),
        subMenuHoverEffect: (function () {
            
            $('.dropdown-items').hover(function() {
                $(this).stop().animate({ left: 10 }, 'fast');
            }, function() {
                $(this).stop().animate({ left: 0 }, 'fast');
            });
        }())
    }
    
/****** CALENDAR ******/
    
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
        getRedDaysFromAPI: function(year) {
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
                                td.attr('id', calendarModel.years[year] + 
                                        '-' + 0 + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.attr('id', calendarModel.years[year] + 
                                        '-' + 0 + (i + 1) + '-' + num);
                            }
                        }
                        else {
                            if (num < 10) {
                                td.attr('id', calendarModel.years[year] + 
                                        '-' + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.attr('id', calendarModel.years[year] + 
                                        '-' + (i + 1) + '-' + num);
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
        fillSelects: (function() {

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

        onChildAdded: calendarModel.fbRef.on('child_added', function(snapshot) { 
            
            var eventInfo = snapshot.val();
            calendarController.showAddedEvent(
                eventInfo.eventType, 
                eventInfo.eventTime, 
                eventInfo.eventLocation, 
                eventInfo.eventAddress, 
                eventInfo.eventDay
            ); 
        }),
        markRedDays: function(APIresponse) {
            
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
        addEventListeners: function() {

            var addEventButton = $('#button'); 
                addEventButton.on('click', calendarController.validateInput);

            var deleteButton = $('#deleteButton');
                deleteButton.on('click', calendarController.confirmDelete);

            var showButton = $('#showButton');
                showButton.on('click', calendarController.scrollToMonth);

            var backToTopButton = $('#btt');
                backToTopButton.on('click', calendarController.scrollToTop);
        },
        validateInput: function() {

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
        toggleAddWindow: function() {

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
        showAddedEvent: function(eventType, eventTime, eventLocation, eventAddress, dayOfEvent) {

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
        deleteNodes: function(paragraphs) {
            
            for (i = paragraphs.length-1; i>=0; i--) {
                paragraphs[i].remove(); 
            }
        },
        deleteAll: function() {
            var paragraphs = $('p', document).get();

            calendarController.deleteNodes(paragraphs);
            calendarModel.fbRef.remove();
        },
        deleteSingle: function() {

            var parent = $(this).parent(); 
            var parentId = parent.attr('id'); 
            var paragraphs = $('p', parent);

            calendarController.deleteNodes(paragraphs);

            //Create a new Firebase reference that matches the parent ID
            //And remove the data at this location
            var removeData = new Firebase('https://event-calender.firebaseio.com/events/' + parentId);
                removeData.remove(); 
        },
        confirmDelete: function() {

            var conf = confirm('Du håller på att ta bort alla händelser, ' +
                               'detta kan inte göras ogjort. ' +
                               'Är du säker att du vill fortsätta?');
            switch (conf) {

                case true: calendarController.deleteAll();
                           break;

                case false: return; 
                            break;
            }
        },
        removeYearDiv: function() {
            calendarModel.siteContainer.children().not('#btt').remove();
        },
        scrollToMonth: function() {

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
        scrollToTop: function() {
            $('html, body').animate({ scrollTop: 0 }, 'slow');
        }
    }
    
/****** BOOKING SYSTEM ******/
    
    var bookingModel = {
        
        bookingContainer: $('#scheme-table'),
        footer: $('#scheme-footer'),
        days: ['', 'Måndag', 'Tisdag', 'Onsdag', 'Torsdag', 'Fredag'],
        hours: ['08.00 - 09.00', '09.00 - 10.00', '10.00 - 11.00', '11.00 - 12.00', '12.00 - 13.00', 
                '13.00 - 14.00', '14.00 - 15.00', '15.00 - 16.00', '16.00 - 17.00'],
        classrooms: ['WUK', 'Cobol', 'PTK', 'IPK']
    }
    
    var bookingView = {
        
        createScheme: function() {
            
            for (i = 0; i < 6; i++) {
                var tr = $('<div></div>');
                    tr.attr('class', 'scheme-row');
                    tr.appendTo(bookingModel.bookingContainer);
                
                if (i === 0) { 
                    tr.attr('id', 'scheme-head');
                }
                
                if (i < 5) {
                    for (j = 0; j < 10; j++) {
                        
                        var td = $('<div></div>');
                            td.attr('class', 'scheme-cell');
                            td.appendTo(tr);

                        if (i === 0 && j === 0) {
                            td.attr({id: 'scheme-date',
                                     class: 'scheme-cell'
                                    });

                            //Store the AJAX call as a promise
                            var promise = bookingController.grabInfo('bookinginfo');

                            //Display the data in the promise
                            bookingController.displayData(td, promise);
                        }
                        else if (j === 0) {
                            td.attr('class', 'scheme-cell scheme-classroom');
                            td.html(bookingModel.classrooms[i - 1]);
                        }
                        else if (i === 0 && j > 0) {
                            td.attr('class', 'scheme-cell scheme-time');
                            td.html(bookingModel.hours[j - 1]);
                        }

                        if (i > 0 && i < 5 && j > 0) {

                            for (s = 0; s < 2; s++) {

                                var span = $('<span></span>');
                                    span.appendTo(td);

                                if (s === 0) {
                                    span.html('LEDIG');
                                    span.attr('class', 'subject');
                                }
                                else {
                                    span.html('Inte bokad');
                                    span.attr('class', 'booked-by');
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    var bookingController = {
        
        grabInfo: function(filename) {
            
            //Return a promise
            return $.ajax({
                url : "ajax/" + filename + ".php",
                type: "POST"
            });
        },
        displayData: function(element, promise) {
            //If the AJAX call executed properly, append the data
            promise.done(function(data) {
                element.append(data);
            });
        }
    }
    
    
    sfsfdsfsd
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    window.onload = init;
});