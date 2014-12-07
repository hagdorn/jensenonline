<!DOCTYPE html>
<html lang="en" ng-app="onlinePlatform" ng-controller="onlinePlatformCtrl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/normalize.css">
    <link rel="stylesheet" href="styles/style.css">
    <!--<link rel="stylesheet" href="styles/responsive.css">-->
    <script src='https://cdn.firebase.com/js/client/1.1.1/firebase.js'></script>
    <title>Jensen Online Yrkeshögskola</title>
</head>

<body>
    <header id="site-header">
        <img id="school-logo" src="img/logo.jpg" no-repeat>
        <span id="school-name" class="logo-text">JENSEN Yrkeshögskola</span>
        <span id="slogan" class="logo-text">Träning för verkligheten</span>

    <?php
        //Get the page we're currently on without the .php extension
        $basename = substr(strtolower(basename($_SERVER['PHP_SELF'])),0,strlen(basename($_SERVER['PHP_SELF']))-4);

        if ($basename != 'login') {
            echo "  <form id='search-form'>
                        <input type='text' name='search' id='search-input' placeholder='Sök på webbplatsen' alt='Sökfält för att söka på webbsidan' ng-model='query'>
                        <div id='dropdown-container'>
                            <ul id='matches-list'>
                                <li class='search-matches' ng-repeat='name in names | filter: query | orderBy:" . '"toString()"' . "'><a href='#'>{{name}}</a></li>
                            </ul>
                        </div>
                    </form>

                    <form method='post' action='includes/header.php'>
                        <input type='submit' name='logout' id='logout' value='Logga ut' alt='Knapp för att logga ut'>
                    </form>
                 ";
        }

        if (isset($_POST['logout'])) {		
            session_start();
            session_destroy();
            header('Location: ../login.php');
        }
    ?>
    </header>