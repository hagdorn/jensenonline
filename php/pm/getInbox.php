<?php
	//Antal meddelanden per sida. Kanske ska sättas någon annanstans senare med tanke på design.
	$messagesPerPage = 5;

	try{
		require_once('php/pdoConnect.php');
		
	
		
		if($_SESSION['box'] == 'inbox'){
			$query = "SELECT pm.message, pm.subject, pm.datetime, pm.id, useraccounts.firstname, useraccounts.lastname ";
			$query .= "FROM pm LEFT JOIN useraccounts ON (pm.fromuser = useraccounts.id) ";
			$query .= "WHERE touser = :touser AND status != 'deleted' ";
			$query .= "ORDER BY datetime DESC" ;	
		}
		else if($_SESSION['box'] == 'sent'){
			$query = "SELECT pm.message, pm.subject, pm.datetime, pm.id, useraccounts.firstname, useraccounts.lastname ";
			$query .= "FROM pm LEFT JOIN useraccounts ON (pm.touser = useraccounts.id) ";
			$query .= "WHERE fromuser = :touser ";
			$query .= "ORDER BY datetime DESC" ;
		}
		else if($_SESSION['box'] == 'deleted'){
			$query = "SELECT pm.message, pm.subject, pm.datetime, pm.id, useraccounts.firstname, useraccounts.lastname ";
			$query .= "FROM pm LEFT JOIN useraccounts ON (pm.fromuser = useraccounts.id) ";
			$query .= "WHERE touser = :touser AND status = 'deleted' ";
			$query .= "ORDER BY datetime DESC" ;
		}
		

		$ps = $db->prepare($query); 
		$ps->execute(array('touser'=>$_SESSION['id']));
		$result = $ps->fetchAll();
		
		if (isset($_GET['page'])){
			$pageNumber = $_GET['page'];
			echo $_GET['page'];
		}
		if (!isset($pageNumber)){
			$pageNumber = 1;
		}

		
		$i = 0 + ($messagesPerPage * ($pageNumber - 1));
		
		while($i < $messagesPerPage * $pageNumber){
			
			
			if(isset($result[$i]['id'])){
				echo("<tr>");
				echo("<td><form method='' action=''><input type='checkbox' id='" .$result[$i]['id'] ."'></td><td><label for='" .$result[$i]['id'] ."'>" .$result[$i]['firstname'] . " " . $result[$i]['lastname'] ."</label></form></td>");
				echo("<td><a href='readmsg.php?message=".$result[$i]['id'] ."'>".$result[$i]['subject']);
				echo("</td><td><span>" .$result[$i]['datetime'] ."</span></a></td></tr>");
			}
			else{
				echo("<tr>");
				echo("<td> </td>");
				echo("<td> </td><td><span> </span></a></td></tr>");		
			}
			
			
			$i ++;
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
		echo ("<a href='#'><li>>|</li></a>");
		echo ("</ul>");
	}
	
	
		
		
		
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}
	
?>
