<!DOCTYPE html>
<html lang="en" data-ng-app="onlinePlatform" data-ng-controller="onlinePlatformCtrl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    
    <title>Jensen Online Yrkeshögskola</title>
</head>

<body>
    
<?php
    $basename = substr(strtolower(basename($_SERVER['PHP_SELF'])),0,strlen(basename($_SERVER['PHP_SELF']))-4);

    if ($basename != 'login') {
        echo "<header>
                <form method='post' action='includes/header.php'>
                    <input type='submit' name='logout' value='Logga ut' id='logout'>
                </form>
            </header>";
    }

    if (isset($_POST['logout'])) {
        session_unset();
        session_destroy();
        header('Location: ../login.php');
    }
?>
