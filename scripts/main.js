$(document).ready(function() {
    
    function init () {
        mainMenu.toggleDropDown('msg');
        mainMenu.toggleDropDown('mypages');
        mainMenu.toggleDropDown('tools');
        mainMenu.toggleDropDown('administration');
        mainMenu.toggleDropDown('contactinfo');
        mainMenu.toggleDropDown('utbildning');
        mainMenu.toggleDropDown('surveys');
        mainMenu.toggleDropDown('help');
        mainMenu.mainHoverEffect(7);
        mainMenu.subMenuHoverEffect(10);
        
        var input = document.getElementById('search');
            input.addEventListener('keyup', setEventListener);
    }
    
    function setEventListener(e) {
        
        var input = document.getElementById('search');
        var scope = angular.element(document.getElementById('site-search')).scope();
        var searchHits = document.getElementById('search-hits');
        
        var keyValue = String.fromCharCode(e.keyCode);
            keyValue = keyValue.toLowerCase() + keyValue.slice(1);    
                
                for (i = 0; i < scope.names.length; i++) {

                    if (scope.names[i].indexOf(keyValue) === -1) {
                        searchHits.style.display = 'none';

                        if (e.keyCode === 8 && input.value.length === 0) {
                            searchHits.style.display = 'none';
                        }
                        else if (e.keyCode === 8) {
                            searchHits.style.display = 'block';
                            return;
                        }
                    }
                    else {
                        searchHits.style.display = 'block';
                        return;
                    }
                }
    }
    
    var mainMenu = {
    
        toggleDropDown: function (id) {

            $('#main-menu' + ' #' + id + '').hover(function() {
                $('#' + id + ' ul').stop().slideToggle();
            });
        },
        mainHoverEffect: function (margin) {

            $('#main-menu li').hover(function() {
                $(this).stop().animate({ top: margin }, 'fast');
            }, function() {
                $(this).stop().animate({ top: 0 }, 'fast');
            });
        },
        subMenuHoverEffect: function (margin) {

            $('#main-menu li ul li').hover(function() {
                $(this).stop().animate({ left: margin }, 'fast');
            }, function() {
                $(this).stop().animate({ left: 0 }, 'fast');
            });
        }
    }
    
    window.onload = init;
});