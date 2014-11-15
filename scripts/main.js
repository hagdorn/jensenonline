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
        mainMenu.enlargeElement();
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
        },
        enlargeElement: function() {
            $('#logout').hover(function() {
                $(this).stop().animate({ width: 85, height: 35 }, 'fast');
            }, function() {
                $(this).stop().animate({ width: 80, height: 30 }, 'fast');    
            });
        }
        
    }
    
    window.onload = init;
});