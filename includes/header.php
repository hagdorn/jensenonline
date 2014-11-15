<!DOCTYPE html>
<html lang="en" data-ng-app="onlinePlatform" data-ng-controller="onlinePlatformCtrl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    
    <title>Jensen Online Yrkeshögskola</title>
</head>

<body>
<header>
    <img src="img/logo.jpg" no-repeat>
    <span>JENSEN Yrkeshögskola</span>
    <span>Träning för verkligheten</span>
    
    <form id="search-form">
        <input type="text" name="search" id="search" placeholder="Sök på webbplatsen" data-ng-model="query">
        
        <div id="search-hits">
            <ul id="site-search">
                <li data-ng-repeat="name in names | filter: query | orderBy: 'toString()'"><a href="#">{{name}}</a></li>
            </ul>
        </div>
    </form>
<?php
    $basename = substr(strtolower(basename($_SERVER['PHP_SELF'])),0,strlen(basename($_SERVER['PHP_SELF']))-4);

    if ($basename != 'login') {
        echo "  <form method='post' action='includes/header.php'>
                    <input type='submit' name='logout' value='Logga ut' id='logout'>
                </form>
             ";
    }

    if (isset($_POST['logout'])) {
        session_unset();
        session_destroy();
        header('Location: ../login.php');
    }
?>
</header>