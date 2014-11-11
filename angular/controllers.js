var onlinePlatform = angular.module('onlinePlatform', []);

onlinePlatform.controller('onlinePlatformCtrl', function ($scope) {

    $scope.menus = [

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
            admin: {
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
            teacher: {
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
            student: {
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
            }
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
            admin: {
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
            teacher: {
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
            student: {
                title: 'Verktyg',
                items: [
                    {
                        title: 'Ladda ner Dreamspark produkter',
                        URL: 'dreamspark'
                    }
                ],
                URL: 'tools',
                id: 'tools'
            }
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
                }
            ],
            URL: 'help',
            id: 'help'
        }
    ]
});
