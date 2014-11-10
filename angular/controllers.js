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
            items: [
                {
                    title: 'Inkorg',
                    URL: 'inbox'
                },
                {
                    title: 'Skickade meddelanden',
                    URL: 'sentmsg'
                },
                {   
                    title: 'Borttagna meddelanden',
                    URL: 'removedmsg'
                }
            ],
            URL: 'messages',
            id: 'msg'
        },
        {
            title: 'Mina sidor',
            items: [
                {
                    title: 'Mina kurser',
                    URL: 'courses'
                },
                {
                    title: 'Mitt schema',
                    URL: 'schedule'
                },
                {
                    title: 'Klasslista',
                    URL: 'classlist'
                },
                {
                    title: 'Anteckningar',
                    URL: 'notes'
                }
            ],
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
            items: [
                {
                    title: 'Ladda ner Dreamspark produkter',
                    URL: 'dreamspark'
                }
            ],
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

