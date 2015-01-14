<!DOCTYPE html>
<html lang="en" ng-app="onlinePlatform" ng-controller="onlinePlatformCtrl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../public/styles/normalize.css">
    <link rel="stylesheet" href="../public/styles/style.css">
    <link rel="stylesheet" href="../public/styles/ch_style.css">
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700|Dosis|Domine|PT+Sans|Roboto' rel='stylesheet' type='text/css'>
    <!--<link rel="stylesheet" href="styles/responsive.css">-->
    <script src='https://cdn.firebase.com/js/client/1.1.1/firebase.js'></script>
    <title>Jensen Online Yrkeshögskola</title>
</head>
<body>
    <header>
        <div id="header-wrapper">
            <img id="company-logo" src="../public/img/logo.jpg" no-repeat>
            <span id="company-name" class="company-text text-thick">JENSEN Yrkeshögskola</span>
            <span id="company-slogan" class="company-text">Träning för verkligheten</span>

            <?php
                require_once('../includes/functions/functions.php');
                $currentPage = check_current_page();

                if ($currentPage != 'login') {
                    include_once('headercontent.php');
                }

                if (isset($_POST['logout'])) {		
                    session_start();
                    session_destroy();
                    header('Location: ../public/login.php');
                }

                //include_once('php/security/autologout.php');
            ?>
        </div>
    </header>