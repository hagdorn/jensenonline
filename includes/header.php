<!DOCTYPE html>
<html lang="en" ng-app="onlinePlatform" ng-controller="onlinePlatformCtrl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../public/styles/normalize.css">
    <link rel="stylesheet" href="../public/styles/style.css">
    <!--<link rel="stylesheet" href="styles/responsive.css">-->
    <script src='https://cdn.firebase.com/js/client/1.1.1/firebase.js'></script>
    <title>Jensen Online Yrkeshögskola</title>
</head>

<body>
    <header id="site-header">
        <img id="school-logo" src="../public/img/logo.jpg" no-repeat>
        <span id="school-name" class="logo-text">JENSEN Yrkeshögskola</span>
        <span id="slogan" class="logo-text">Träning för verkligheten</span>

    <?php
        //include('functions/functions.php');
        $currentPage = check_current_page();

        if ($currentPage != 'login') {
            include_once('searchfield.php');
            include_once('logoutbutton.php');
        }

        if (isset($_POST['logout'])) {		
            session_start();
            session_destroy();
            header('Location: ../public/login.php');
        }

        //include_once('php/security/autologout.php');
    ?>
    </header>