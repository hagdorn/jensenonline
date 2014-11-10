$(document).ready(function() {
    
    function init () {
        mainMenu.toggleDropDown(3);
        mainMenu.toggleDropDown(4);
        mainMenu.toggleDropDown(7);
        mainMenu.mainHoverEffect(7);
        mainMenu.subMenuHoverEffect(10);
    }
    
    var mainMenu = {
    
        toggleDropDown: function (num) {

            $('#main-menu li:nth-child(' + num + ')').hover(function() {
                $('#main-menu li:nth-child(' + num + ') ul').stop().slideToggle();
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