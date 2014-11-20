<?php
	try{
		require_once('php/pdoConnect.php');
		
        $query = "SELECT * ";
        $query .= "FROM pm LEFT JOIN useraccounts ON (pm.fromuser = useraccounts.id) ";
        $query .= "WHERE touser = " .$_SESSION['id'] ;
        $query .= " ORDER BY datetime DESC" ;
		
     
		$result = $db->query($query);
		while ($message = $result->fetch()){
			
			echo("<tr>");
			echo("<td><form method='' action=''><input type='checkbox' id='" .$message['0'] ."'></td><td><label for='" .$message['0'] ."'>" .$message['firstname'] . " " . $message['lastname'] ."</label></form></td>");
			echo("<td><a href='#'>".$message['subject']);
			echo("</td><td><span>" .$message['datetime'] ."</span></a></td></tr>");
		}
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}



?>
