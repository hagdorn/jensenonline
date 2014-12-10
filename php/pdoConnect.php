<?php
    try{
        //$db = new PDO("mysql:dbname=120949-jensenonline;host=mysql14.citynetwork.se:3306", "120949-zj17807", "jensen2015");
        $db = new PDO("mysql:dbname=jensenOnline;host=localhost", "root", "");
		//sätt på exception. Default av.
		$db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    	//Sätt på utf8
		$db->exec("SET NAMES 'utf8'");
    }
    catch(Exception $exception){
        echo("error <br><br>" . $exception);
    }
?>

