<?php
    try{
        //$db = new PDO("mysql:dbname=120949-jensenonline;host=mysql14.citynetwork.se:3306", "120949-zj17807", "jensen2015");
        $db = new PDO("mysql:dbname=jensenOnline;host=localhost", "root", "");
    }
    catch(Exception $exception){
        echo("error <br><br>" . $exception);
    }
?>

