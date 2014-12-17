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
		$query = "INSERT INTO roombookings (room, date, hour, description) ";
		$query .= "VALUES (:room, :date, :hour, :description)";
		
		$ps = $db->prepare($query);
		$ps->execute([
			'room'=>$room,
			'date'=>$_SESSION['date'],
			'hour'=>$_POST['time'],
			'description'=>$_POST['classSubject']
		]);
		
		
	}
	catch(Exception $e){
		echo("Error<br><br>$e");
	}