<?php

	try{
		require_once('../includes/php/connections/pdoConnect.php');
			
		$query = "SELECT CONCAT(fromU.firstname,' ', fromU.lastname)  as 'to', ";
		$query .= "CONCAT (toU.firstname, ' ', toU.lastname) as 'from', ";
		$query .= "message, subject, datetime, status, replied, replieddatetime ";
		$query .= "FROM useraccounts AS fromU ";
		$query .= "LEFT JOIN pm ON (fromU.id = pm.touser) ";
		$query .= "LEFT JOIN useraccounts AS toU ON ( pm.fromuser = toU.id) ";
		$query .= "WHERE (fromU.id = :user OR toU.id = :user) AND pm.id = :msg";
	
		$ps = $db->prepare($query); 
		$ps->execute(array('user'=>$_SESSION['id'], 'msg'=>$_GET['message']));
		$result = $ps -> fetch(PDO::FETCH_ASSOC);
		
		echo ("<div>To: " .$result['to'] ."</div>");
		echo ("<div>From: " .$result['from'] ."</div>");
		echo ("<div>Subject: " .$result['subject'] ."</div> <br>");
		echo ("<div> ".$result['message'] ."</div>");
		
		//If unread message, make it read
		if($result['status'] == "unread"){
			$query = "UPDATE pm ";	
			$query .= "SET status = :read ";	
			$query .= "WHERE id = :id";
			
			$ps = $db->prepare($query);
			$ps->execute(['id'=>$_GET['message'], 'read'=>'read']);
		}
		
	}
	catch(Exception $exception){
		echo('Error<br><br>' . $exception);
	}