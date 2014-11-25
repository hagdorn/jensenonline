<?php
	//Antal meddelanden per sida. Kanske ska sättas någon annanstans senare med tanke på design.
	$messagesPerPage = 10;

	try{
		require_once('php/pdoConnect.php');
		
	
		
		if($_SESSION['box'] == 'inbox'){
			$query = "SELECT * ";
			$query .= "FROM pm LEFT JOIN useraccounts ON (pm.fromuser = useraccounts.id) ";
			$query .= "WHERE touser = :touser AND status != 'deleted' ";
			$query .= "ORDER BY datetime DESC" ;	
		}
		else if($_SESSION['box'] == 'sent'){
			$query = "SELECT * ";
			$query .= "FROM pm LEFT JOIN useraccounts ON (pm.fromuser = useraccounts.id) ";
			$query .= "WHERE fromuser = :touser ";
			$query .= "ORDER BY datetime DESC" ;
		}
		else if($_SESSION['box'] == 'deleted'){
			$query = "SELECT * ";
			$query .= "FROM pm LEFT JOIN useraccounts ON (pm.fromuser = useraccounts.id) ";
			$query .= "WHERE touser = :touser AND status = 'deleted' ";
			$query .= "ORDER BY datetime DESC" ;
		}
		

		$ps = $db->prepare($query); 
		$ps->execute(array('touser'=>$_SESSION['id']));
		$result = $ps->fetchAll();
		
		foreach($result as $message){
			
			echo("<tr>");
			echo("<td><form method='' action=''><input type='checkbox' id='" .$message['0'] ."'></td><td><label for='" .$message['0'] ."'>" .$message['firstname'] . " " . $message['lastname'] ."</label></form></td>");
			echo("<td><a href='#'>".$message['subject']);
			echo("</td><td><span>" .$message['datetime'] ."</span></a></td></tr>");
		}
	echo("</table>");
		
	
	//Antal meddelanden.
	$numberOfMessages = sizeof($result);
	//Antal sidor
	$numberOfPages =  ceil($numberOfMessages / $messagesPerPage);
	
		
	//Kod för att kunna växla mellan sidor. Ska ändras.
	if ($numberOfPages > 1){
		echo ("<ul>");
		echo ("<a href='#'><li id='first-li'>Sida 1</li></a>");
		echo ("<a href='#'><li>|<</li></a>");
		echo ("<a href='#'><li><</li></a>");
		echo ("<a href='#'><li>></li></a>");
		echo ("<a href='#'><li>>|</li></a>");
		echo ("</ul>");
	}
	
	
		
		
		
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}
	
?>
