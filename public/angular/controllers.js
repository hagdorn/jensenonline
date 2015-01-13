var onlinePlatform = angular.module('onlinePlatform', []);

onlinePlatform.controller('onlinePlatformCtrl', function ($scope) {

    $scope.adminmenu = [

        {
            title: 'Startsida',
            URL: 'index',
            image: 'home'
        },
        {
            title: 'Nyheter',
            URL: 'news',
            image: 'news'
        },
        {
            title: 'Meddelanden',
            items: [
                {
                    title: inboxText,
                    URL: 'inbox'
                },
                {
                    title: 'Skicka meddelande',
                    URL: 'sendmsg'
                },
                {
                    title: 'Skickade meddelanden',
                    URL: 'sent'
                },
                {   
                    title: 'Borttagna meddelanden',
                    URL: 'removed'
                }
            ],
            URL: 'inbox',
            id: 'msg',
            image: 'messages'
        },
        {
            title: 'Administration',
            items: [
                {
                    title: 'Överblick',
                    URL: 'overview'
                },
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
                },
                {
                    title: 'Hantera lokaler',
                    URL: 'mngfacilities'
                }
            ],
            id: 'administration',
            image: 'administration'
        },
        {
            title: 'Applikationer',
            items: [
                {
                    title: 'Forum',
                    URL: 'forum'
                },
                {
                    title: 'Kalender',
                    URL: 'calendar'
                }
            ],
            id: 'applications',
            image: 'apps'
        },
        {
            title: 'Boka lokal',
            URL: 'classroombooking',
            id: 'bookclassroom',
            image: 'booking'
        },
        {
            title: 'Enkäter',
            items: [
                {
                    title: 'Skapa enkät',
                    URL: 'createsurvey'
                },
                {
                    title: 'Visa sparade enkäter',
                    URL: 'savedsurveys'
                }
            ],
            id: 'surveys',
            image: 'survey'
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
            id: 'help',
            image: 'help'
        }
    ],
    $scope.teachermenu = [
    
        {
            title: 'Startsida',
            URL: 'index',
            image: 'home'
        },
        {
            title: 'Nyheter',
            URL: 'news',
            image: 'news'
        },
        {
            title: 'Meddelanden',
            items: [
                {
                    title: inboxText,
                    URL: 'inbox'
                },
                {
                    title: 'Skicka meddelande',
                    URL: 'sendmsg'
                },
                {
                    title: 'Skickade meddelanden',
                    URL: 'sent'
                },
                {   
                    title: 'Borttagna meddelanden',
                    URL: 'removed'
                }
            ],
            URL: 'inbox',
            id: 'msg',
            image: 'messages'
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
                }
            ],
            URL: 'education',
            id: 'education',
            image: 'educations'
        },
        {
            title: 'Applikationer',
            items: [
                {
                    title: 'Forum',
                    URL: 'forum'
                },
                {
                    title: 'Kalender',
                    URL: 'calendar'
                }
            ],
            id: 'applications',
            image: 'apps'
        },
        {
            title: 'Boka lokal',
            URL: 'classroombooking',
            image: 'booking'
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
            id: 'contactinfo',
            image: 'contactinfo'
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
            id: 'help',
            image: 'help'
        }
    ],
    $scope.studentmenu = [
        
        {
            title: 'Startsida',
            URL: 'index',
            image: 'home'
        },
        {
            title: 'Nyheter',
            URL: 'news',
            image: 'news'
        },
        {
            title: 'Meddelanden',
            items: [
                {
                    title: inboxText,
                    URL: 'inbox'
                },
                {
                    title: 'Skicka meddelande',
                    URL: 'sendmsg'
                },
                {
                    title: 'Skickade meddelanden',
                    URL: 'sent'
                },
                {   
                    title: 'Borttagna meddelanden',
                    URL: 'removed'
                }
            ],
            URL: 'inbox',
            id: 'msg',
            image: 'messages'
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
                }
            ],
            URL: 'mypages',
            id: 'mypages',
            image: 'mypages'
        },
        {
            title: 'Applikationer',
            items: [
                {
                    title: 'Forum',
                    URL: 'forum'
                },
                {
                    title: 'Kalender',
                    URL: 'calendar'
                },
                {
                    title: 'Anteckningar',
                    URL: 'notes'
                }
            ],
            id: 'applications',
            image: 'apps'
        },
        {
            title: 'Verktyg',
            items: [
                {
                    title: 'Dreamspark produkter',
                    URL: 'dreamspark'
                }
            ],
            URL: 'tools',
            id: 'tools',
            image: 'tools'
        },
        {
            title: 'Inställningar',
            URL: 'settings',
            image: 'settings'
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
            id: 'help',
            image: 'help'
        }
    ],
        $scope.menuItems = ['Utbildningar', 'Kurser', 'Personal', 'Lärare', 'Studenter', 'Lokaler'];
});
