var onlinePlatform = angular.module('onlinePlatform', []);

onlinePlatform.controller('onlinePlatformCtrl', function ($scope) {
    
    $scope.mainMenu = ['Startsida', 'Nyheter', 'Meddelanden', 'Mina sidor', 'Forum', 'Kalender', 'Verktyg', 'Hjälp'],
    $scope.subMenu = {
        myPages: ['Mina kurser', 'Mitt schema', 'Klasslista', 'Anteckningar']
    }
        
    
    
    /*$scope.mainMenu = ['Hem', 'Meddelanden', 'Nyheter', 'Mina sidor', 'Hjälp', 'Verktyg', 'Forum'];
    $scope.myPages = ['Mitt schema', 'Min klass', 'Mina kurser'];*/
});

