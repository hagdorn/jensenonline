var onlinePlatform = angular.module('onlinePlatform', []);

onlinePlatform.controller('onlinePlatformCtrl', function ($scope) {
    
    $scope.mainMenu = ['Startsida', 'Nyheter', 'Meddelanden', 'Mina sidor', 'Forum', 'Kalender', 'Verktyg', 'Hjälp'],
    $scope.subMenu = {
        messages: ['Inkorg', 'Skickat', 'Borttaget'],
        myPages: ['Mina kurser', 'Mitt schema', 'Klasslista', 'Anteckningar'],
        tools: ['Ladda ner Dreamspark produkter']
    }
        
});

