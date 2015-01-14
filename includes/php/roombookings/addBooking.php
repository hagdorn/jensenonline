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
		$query = "INSERT INTO roombookings (room, date, hour, description, booker) ";
		$query .= "VALUES (:room, :date, :hour, :description, :booker)";
		
		$ps = $db->prepare($query);
		$ps->execute([
			'room'=>$room,
			'date'=>$_SESSION['date'],
			'hour'=>$_POST['time'],
			'description'=>$_POST['booking-title'],
			'booker'=>$_SESSION['firstname'] . " " . $_SESSION['lastname']
		]);
		
		
	}
	catch(Exception $e){
		echo("Error<br><br>$e");
	}