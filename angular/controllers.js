var onlinePlatform = angular.module('onlinePlatform', []);

onlinePlatform.controller('onlinePlatformCtrl', function ($scope) {

    $scope.adminmenu = [

        {
            title: 'Startsida',
            URL: 'home'
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
                    title: 'Skicka meddelande',
                    URL: 'sendmsg'
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
            URL: 'inbox',
            id: 'msg'
        },
        {
            title: 'Administration',
            items: [
                {
                    title: 'Hantera utbildningar',
                    URL: 'mngprograms'
                },
                {
                    title: 'Hantera kurser',
                    URL: 'mngcourses'
                },
                {
                    title: 'Hantera lärare',
                    URL: 'mngteachers'
                },
                {
                    title: 'Hantera studenter',
                    URL: 'mngstudents'
                }
            ],
            URL: 'administration',
            id: 'administration'
        },
        {
            title: 'Forum',
            URL: 'forum'
        },
        {
            title: 'Kalender',
            URL: 'calendar'
        },
        {
            title: 'Enkäter',
            items: [
                {
                    title: 'Skapa enkät',
                    URL: 'createsurvey'
                },
                {
                    title: 'Visa tidigare enkäter',
                    URL: 'previussurveys'
                }
            ],
            URL: 'surveys',
            id: 'surveys'
        },
        {
            title: 'Hjälp',
            items: [
                {
                    title: 'Vanliga frågor',
                    URL: 'faq'
                },
                {
                    title: 'JENSEN kontaktuppgifter',
                    URL: 'contactinfo'
                },
                {
                    title: 'Om oss',
                    URL: 'about'
                }
            ],
            URL: 'help',
            id: 'help'
        }
    ],
    $scope.teachermenu = [
    
        {
            title: 'Startsida',
            URL: 'home'
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
                    title: 'Skicka meddelande',
                    URL: 'sendmsg'
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
            URL: 'inbox',
            id: 'msg'
        },
        {
            title: 'Utbildning',
            items: [
                {
                    title: 'Kurser överblick',
                    URL: 'coursesoverview'
                },
                {
                    title: 'Sätt eller ändra betyg',
                    URL: 'editgrades'
                },
                {
                    title: 'Boka eller avboka lokaler',
                    URL: 'classroombooking'
                }
            ],
            URL: 'utbildning',
            id: 'utbildning'
        },
        {
            title: 'Forum',
            URL: 'forum'
        },
        {
            title: 'Kalender',
            URL: 'calendar'
        },
        {
            title: 'Kontaktuppgifter',
            items: [
                {
                    title: 'Profil',
                    URL: 'profile'
                },
                {
                    title: 'Redigera kontaktuppgifter',
                    URL: 'editcontactinfo'
                }
            ],
            URL: 'contactinfo',
            id: 'contactinfo'
        },
        {
            title: 'Hjälp',
            items: [
                {
                    title: 'Vanliga frågor',
                    URL: 'faq'
                },
                {
                    title: 'JENSEN kontaktuppgifter',
                    URL: 'contactinfo'
                },
                {
                    title: 'Om oss',
                    URL: 'about'
                }
            ],
            URL: 'help',
            id: 'help'
        }
    ],
    $scope.studentmenu = [
        
        {
            title: 'Startsida',
            URL: 'home'
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
                    title: 'Skicka meddelande',
                    URL: 'sendmsg'
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
            URL: 'inbox',
            id: 'msg'
        },
        {
            title: 'Mina sidor',
            items: [
                {
                    title: 'Mina kurser',
                    URL: 'mycourses'
                },
                {
                    title: 'Mitt schema',
                    URL: 'myschedule'
                },
                {
                    title: 'Mina betyg',
                    URL: 'mygrades'
                },
                {
                    title: 'Mina kontaktuppgifter',
                    URL: 'mycontactinfo'
                },
                {
                    title: 'Min klasslista',
                    URL: 'classlist'
                },
                {
                    title: 'Mina anteckningar',
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
            URL: 'calendar'
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
            items: [
                {
                    title: 'Vanliga frågor',
                    URL: 'faq'
                },
                {
                    title: 'JENSEN kontaktuppgifter',
                    URL: 'contactinfo'
                },
                {
                    title: 'Om oss',
                    URL: 'about'
                }
            ],
            URL: 'help',
            id: 'help'
        }
    ],
        $scope.names = ['Hans', 'Jonas', 'Gurra', 'Snurre sprätt', 'Torsten', 'Xerxes', 'Christian', 'Christoffer'];
});
