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