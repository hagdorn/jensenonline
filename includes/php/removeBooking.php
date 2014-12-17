<?php
	

	try{
		$query = "SELECT id FROM rooms WHERE name = :name";

		$ps = $db->prepare($query); 
		$ps->execute(['name'=>$_POST['class']]);
		$result = $ps -> fetch(PDO::FETCH_ASSOC);
		
		$room = $result['id'];
		
		
	}
	catch(Exception $e){
		echo("Error<br><br>$e");
	}


	try{
		$query = "DELETE from roombookings ";
		$query .= "WHERE room = :room AND date = :date AND hour = :hour";
		
		$ps = $db->prepare($query);
		$ps->execute([
			'room'=>$room,
			'date'=>$_SESSION['date'],
			'hour'=>$_POST['time']
		]);
		
		
	}
	catch(Exception $e){
		echo("Error<br><br>$e");
	}