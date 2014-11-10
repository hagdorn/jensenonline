$(document).ready(function() {
    
    $('#main-menu li').hover(function() {
        $(this).stop().animate({ top: 7 }, 'fast');
        }, function() {
            $(this).stop().animate({ top: 0 }, 'fast');
    });
    
    $('#main-menu li ul li').hover(function() {
        $(this).stop().animate({ left: 10 }, 'fast');
    }, function() {
        $(this).stop().animate({ left: 0 }, 'fast');
    });
    
    $('#main-menu li:nth-child(4)').hover(function() {
        $('#main-menu li:nth-child(4) ul').stop().slideToggle();
    });
    
    $('#main-menu li:nth-child(3)').hover(function() {
        $('#main-menu li:nth-child(3) ul').stop().slideToggle();
    });
    
    $('#main-menu li:nth-child(7)').hover(function() {
        $('#main-menu li:nth-child(7) ul').stop().slideToggle();
    });
    
});