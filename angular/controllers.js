var onlinePlatform = angular.module('onlinePlatform', []);

onlinePlatform.controller('onlinePlatformCtrl', function ($scope) {
    
    $scope.menus = [
        
        {
            title: 'Startsida'    
        },
        {
            title: 'Nyheter'    
        },
        {
            title: 'Meddelanden',
            items: ['Inkorg', 'Skickade meddelanden', 'Borttagna meddelande']
        },
        {
            title: 'Mina sidor',
            items: ['Mina kurser', 'Mitt schema', 'Klasslista', 'Anteckningar']
        },
        {
            title: 'Forum'
        },
        {
            title: 'Kalender'    
        },
        {
            title: 'Verktyg',
            items: ['Ladda ner Dreamspark produkter']
        },
        {
            title: 'Hjälp'    
        }
        
    ]
    
    
    
    
    
    
    /*$scope.mainMenu = ['Startsida', 'Nyheter', 'Meddelanden', 'Mina sidor', 'Forum', 'Kalender', 'Verktyg', 'Hjälp'],
    $scope.subMenu = {
        messages: ['Inkorg', 'Skickat', 'Borttaget'],
        myPages: ['Mina kurser', 'Mitt schema', 'Klasslista', 'Anteckningar'],
        tools: ['Ladda ner Dreamspark produkter']
    }*/
        
});

