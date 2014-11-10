var onlinePlatform = angular.module('onlinePlatform', []);

onlinePlatform.controller('onlinePlatformCtrl', function ($scope) {
    
    $scope.menus = [
        
        {
            title: 'Startsida',
            URL: 'home',
        },
        {
            title: 'Nyheter',
            URL: 'news'
        },
        {
            title: 'Meddelanden',
            items: ['Inkorg', 'Skickade meddelanden', 'Borttagna meddelande'],
            URL: 'messages',
            id: 'msg'
        },
        {
            title: 'Mina sidor',
            items: ['Mina kurser', 'Mitt schema', 'Klasslista', 'Anteckningar'],
            URL: 'mypages',
            id: 'mypages'
        },
        {
            title: 'Forum',
            URL: 'forum'
        },
        {
            title: 'Kalender',
            URL: 'calender'
        },
        {
            title: 'Verktyg',
            items: ['Ladda ner Dreamspark produkter'],
            URL: 'tools',
            id: 'tools'
        },
        {
            title: 'Hjälp',
            URL: 'help'
        }
        
    ]
    
    
    
    
    
    
    /*$scope.mainMenu = ['Startsida', 'Nyheter', 'Meddelanden', 'Mina sidor', 'Forum', 'Kalender', 'Verktyg', 'Hjälp'],
    $scope.subMenu = {
        messages: ['Inkorg', 'Skickat', 'Borttaget'],
        myPages: ['Mina kurser', 'Mitt schema', 'Klasslista', 'Anteckningar'],
        tools: ['Ladda ner Dreamspark produkter']
    }*/
        
});

