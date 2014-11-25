//The database reference
var myDataRef = new Firebase('https://event-calender.firebaseio.com/events'); 

//Add new events to the calendar widget
myDataRef.on('child_added', function(snapshot) { 
    var info = snapshot.val();
    calendar.showAddedEvent(info.eventType, info.eventTime, info.eventLocation, info.eventAddress, info.eventDay); 
});

var theParent; 
var container = document.getElementById('calendar-container');

//An object containing any raw data
var dataModel = {

    months: ['January', 'February', 'Marsch', 'April', 'May', 'June',
             'July', 'August', 'September', 'October', 'November', 'December'
            ],
    daysInMonth: [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], 
    years: ['2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2024'],
    buttonTexts: ['Add', 'Delete'],

    redDays: function(year) {
        
        var xhr = new XMLHttpRequest();
            xhr.open('GET', 'http://api.dryg.net/dagar/v2/' + year, false);
            xhr.send();
        var json = JSON.parse(xhr.responseText);
        
        //Search through the returned JSON, starting in the days "level"
        for (item in json.dagar) {
            
            //Store every item as an object to allow deeper looping
            var propertyObject = json.dagar[item];
            
            //Loop through every property inside a day
            for (subitem in propertyObject) {
                
                //If the iteration is on the "röd dag" (red day) property 
                if (subitem === 'röd dag') {
                    
                    //Store the subitem as an object so we can get its value
                    var redDay = propertyObject[subitem];
                    
                    //If redDay has a value of "Ja" (yes) then console log it
                    if (redDay === 'Ja') {
                        
                        //Call the function that marks the red days
                        //Using the current date as the argument
                        calendar.markRedDays(propertyObject.datum);
                        
                        //Jump out of loop to skip the last property iteration
                        break;
                    }
                }
            }
        }
    }
}

var calendar = {

    //Function that runs after the page is done loading
    init: function() {

        var addEventButton = document.getElementById('button'); 
            addEventButton.addEventListener('click', (function (e) { 

        var typeOfEvent = document.getElementById('event').value; 
        var timeOfEvent = document.getElementById('time').value;
        var locationOfEvent = document.getElementById('location').value;   
        var addressOfEvent = document.getElementById('address').value; 
        var dayOfEvent = theParent.id;

        var inputArray = ['type of event', 'location of the event', 'address of the event'];
        
        //Check if any input values are too long
        for (i = 0; i < inputArray.length; i++) {

            if (typeOfEvent.length > 21) {
                alert('The information you have entered for ' + inputArray[0]
                + ' is too long.');
                return;
            }
            else if (locationOfEvent.length > 21) {
                alert('The information you have entered for ' + inputArray[1]
                + ' is too long.');
                return;
            }
            else if (addressOfEvent.length > 21) {
                alert('The information you have entered for ' + inputArray[2]
                + ' is too long.');
                return;
            }
        }

        //Create a new JSON for each child added
        var newRef = myDataRef.child(dayOfEvent);
            newRef.set({eventType: typeOfEvent, eventTime: timeOfEvent, 
            eventLocation: locationOfEvent, eventAddress: addressOfEvent, eventDay: dayOfEvent});
        }))

        //Add appropriate functions to each of the buttons
        var deleteButton = document.getElementById('deleteButton');
            deleteButton.addEventListener('click', calendar.confirmDelete);

        var showButton = document.getElementById('showButton');
            showButton.addEventListener('click', calendar.scrollToMonth);

        var backToTopButton = document.getElementById('btt');
            backToTopButton.addEventListener('click', calendar.scrollToTop);

        var selectMonth = document.getElementById('month');
        var selectYear = document.getElementById('year');

        for (i = 0; i < dataModel.months.length; i++) {

            var option = document.createElement('option');
                option.innerHTML = dataModel.months[i];
                option.value = option.innerHTML;
                selectMonth.appendChild(option);
        }

        for (j = 0; j < dataModel.years.length; j++) {

            var option = document.createElement('option');
                option.innerHTML = dataModel.years[j];
                option.value = option.innerHTML;
                selectYear.appendChild(option);
        }
        
        calendar.createCalendar(0);
        dataModel.redDays(2015);
    },
    createCalendar: function(year) {

        var num = 1; 
        
        var yearContainer = document.createElement('div');
            container.appendChild(yearContainer);
            yearContainer.setAttribute('id', dataModel.years[year]);
        
        for (i = 0; i < dataModel.months.length; i++) {
            
            var h1 = document.createElement('h1');
                h1.setAttribute('id', dataModel.years[year] + dataModel.months[i]); 
                h1.innerHTML = dataModel.months[i] + ' ' + dataModel.years[year];
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
                                td.setAttribute('id', dataModel.years[year] + '-' + 0 + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.setAttribute('id', dataModel.years[year] + '-' + 0 + (i + 1) + '-' + num);
                            }
                        }
                        else {
                            if (num < 10) {
                                td.setAttribute('id', dataModel.years[year] + '-' + (i + 1) + '-' + 0 + num);
                            }
                            else {
                                td.setAttribute('id', dataModel.years[year] + '-' + (i + 1) + '-' + num);
                            }
                        }
                    
                    var span = document.createElement('span'); 
                        span.innerHTML = num;
                        td.appendChild(span);
                        num++;
                    
                    //Hide the spare tds depending on how many days the current month has
                    if (dataModel.daysInMonth[i] === 31 && j === 3 && k > 6) {
                        td.style.display = 'none';
                    }
                    else if (dataModel.daysInMonth[i] === 30 && j === 3 && k > 5) {
                        td.style.display = 'none';
                    }
                    //If leap year
                    else if (dataModel.daysInMonth[i] === 29 && j === 3 && k > 4) { 
                        td.style.display = 'none';
                    }
                    else if (dataModel.daysInMonth[i] === 28 && j === 3 && k > 3) { 
                        td.style.display = 'none';
                    }

                    tr.appendChild(td); 

                    for (m = 0; m < 2; m++) { 

                        var button = document.createElement('button');
                            button.innerHTML = dataModel.buttonTexts[m];

                        if (button.innerHTML === 'Add') {
                            button.addEventListener('click', calendar.showEventAddWindow); 
                        }
                        else {
                            button.addEventListener('click', calendar.deleteEvent); 
                        }

                        td.appendChild(button);
                    }
                }
            }
            num = 1; 
        }
    },
    showEventAddWindow: function() {

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

        theParent = parent; 
    },
    showAddedEvent: function(eventType, eventTime, eventLocation, eventAddress, dayOfEvent) {

        var eventInfo = [eventType, eventTime, eventLocation, eventAddress];

        var thisElement = document.getElementById(dayOfEvent); 

        var popup = document.getElementById('pop-up');
            popup.style.visibility = 'hidden'; 

        for (i = 0; i < 4; i++) {

            var p = document.createElement('p');
                p.innerHTML = eventInfo[i];
                thisElement.appendChild(p); 
        }
    },
    removeEvents: function() {

        //Remove all events from the page
        var p_list = document.getElementsByTagName('p');

        for (i = p_list.length-1; i>=0; i--) { 
            p_list[i].parentNode.removeChild(p_list[i]); 
        }
    },
    deleteEvent: function() {

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
    deleteAll: function() {
        //Remove all data from the DB
        myDataRef.remove();
    },
    markRedDays: function(day) {
            
            var currentDate = document.getElementById(day);
            var firstSpan = currentDate.getElementsByTagName('span')[0];
                firstSpan.style.color = 'red';
        
    },
    confirmDelete: function() {
        
        //Require a confirmation of deletion of all data in the DB
        var conf = confirm('You are about to delete all events, this cannot be undone. Are you sure you want to continue?');

        switch (conf) {

            case true: calendar.deleteAll();
                       calendar.removeEvents();
                       break;

            case false: return; 
                        break;
        }
    },
    removeYearDiv: function() {
        
        while (container.firstChild) {
            container.removeChild(container.firstChild);
        }    
    },
    scrollToMonth: function() {
        
        var y = document.getElementById('year');
        var selectedYear = y.options[y.selectedIndex].value;
        var m = document.getElementById('month'); 
        var selectedMonth = m.options[m.selectedIndex].value;
        var index = dataModel.years.indexOf(selectedYear);
        
        calendar.removeYearDiv();
        
        calendar.createCalendar(index);
        dataModel.redDays(selectedYear);
        
        $('html, body').animate({
            scrollTop: $('#' + selectedYear + selectedMonth).offset().top
        }, 'slow');
   },
    scrollToTop: function() {
        
        //Scroll back to the top
        $("html, body").animate({ scrollTop: 0 }, "slow");
    }

} //End of calender object

window.onload = calendar.init;