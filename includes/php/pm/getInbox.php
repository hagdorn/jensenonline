<?php
	//Antal meddelanden per sida. Kanske ska sättas någon annanstans senare med tanke på design.
	$messagesPerPage = 10;

	try{
		//require_once('../includes/php/connections/pdoConnect.php');
		
		if($_SESSION['box'] == 'inbox'){
			$query = "SELECT pm.status, pm.message, pm.subject, pm.datetime, pm.id, useraccounts.firstname, useraccounts.lastname ";
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
		}
		if (!isset($pageNumber)){
			$pageNumber = 1;
		}

		
		$i = 0 + ($messagesPerPage * ($pageNumber - 1));
		
		while($i < $messagesPerPage * $pageNumber){
			
			if(isset($result[$i]['id'])){
				$subject = $result[$i]['subject'];
				$sender = $result[$i]['firstname'] . " " . $result[$i]['lastname'];
				$datetime = $result[$i]['datetime'];
				$id = $result[$i]['id'];
			}
			
			if(isset($result[$i]['status']) && $result[$i]['status'] == "unread"){
				$subject = "<b>" . $subject . "</>";
				$datetime = "<b>" . $datetime . "</>";
				$sender = "<b>" . $sender . "</>";
			}
			
			
			if(isset($result[$i]['id'])){
				echo("<tr class='inboxrow'>");
					echo("<td class='inboxcheckbox'><form method='' action=''><input type='checkbox' id='" . $id ."'><label for='" . $id . "'></label></form></td>");
					echo("<td class='inboxsender'><a href='readmsg.php?message=". $id . "'> ". $sender . "</a></td>");
					echo("<td class='inboxsubject'><a href='readmsg.php?message=". $id . "'> ". $subject . "</a></td>");
					echo("<td class='inboxdate'><a href='readmsg.php?message=". $id . "'>" . $datetime . "</a></td>");
				echo("</tr>");
			}
			else{
				echo("<tr>");
				echo("<td></td>");
				echo("<td></td><td><span></span></a></td></tr>");		
			}
			
			
			$i ++;
		}
	echo("</table>");
		
	//Antal meddelanden.
	$numberOfMessages = sizeof($result);
	//Antal sidor
	$numberOfPages =  ceil($numberOfMessages / $messagesPerPage);
	
		
	//Kod för att kunna växla mellan sidor.
	if ($numberOfPages > 1){
		echo ("<div class='inboxpageslist'>");
		echo ("<ul>");
		echo ("<li>Sida " . $pageNumber . " av " . $numberOfPages);
		
		//Första sidan
		if ($pageNumber > 1){
			echo ("<a href='?page=1'><li>|<</li></a>");
		}
		else{
			echo ("<li>|<</li>");
		}
		//Bakåt en sida
		if ($pageNumber > 1){
			echo ("<a href='?page=" . ($pageNumber - 1) ."'><li><</li></a>");
		}
		else{
			echo ("<li><</li>");
		}
		//Framåt en sida
		if ($pageNumber < $numberOfPages){
			echo ("<a href='?page=" .($pageNumber + 1) ."'><li>></li></a>");
		}
		else{
			echo ("<li>></li>");
		}
		
		
		//Sista sidan
		if ($pageNumber < $numberOfPages){
			echo ("<a href='?page=" . $numberOfPages ."'><li>>|</li></a>");
		}
		else{
			echo("<li>>|</li>");
		}
			
			
		echo ("</ul></div>");
	}
	else{
		echo ("<div class='inboxpageslist'>");
		echo ("<ul>");
		echo ("<li>Sida 1 av 1 |< < > >|</li></ul>");
	}
	
		
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}
	
?>
