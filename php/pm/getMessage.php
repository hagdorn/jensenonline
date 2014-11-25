<?php

	try{
		require_once('php/pdoConnect.php');
			
		$query = "SELECT * ";
		$query .= "FROM pm LEFT JOIN useraccounts ON (pm.fromuser = useraccounts.id) ";
		$query .= "WHERE pm.touser = :user AND pm.id = :id OR pm.fromuser = :user AND pm.id = :id ";
		//$query .= "WHERE id = 5"; //OR fromuser = :user AND id = :id

		$ps = $db->prepare($query); 
		$ps->execute(array('user'=>$_SESSION['id'], 'id'=>$_GET['message']));
		$result = $ps -> fetch(PDO::FETCH_ASSOC);
		
		//print_r($result);
		echo ("<div>To: " .$result['touser'] ."</div>");
		echo ("<div>From: " .$result['fromuser'] ."</div>");
		echo ("<div>Subject: " .$result['subject'] ."</div> <br>");
		echo ("<div> ".$result['message'] ."</div>");
		
		
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}