<!DOCTYPE html>
<html lang="en" data-ng-app="onlinePlatform" data-ng-controller="onlinePlatformCtrl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    
    <title>Jensen Online Yrkeshögskola</title>
</head>

<body>


<form method="post" action="includes/header.php">
    <input type="submit" name="logout" value="Logga ut">
</form>
    
<?php
    if (isset($_POST['logout'])) {
        session_unset();
        session_destroy();
        header('location: ../index.php');
    }
?>