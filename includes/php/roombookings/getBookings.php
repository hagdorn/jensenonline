<?php
	
	if(!isset($_SESSION['date'])){
		$_SESSION['date'] = date('Y-m-d');
	}
	
	if (isset($_POST['day'])){
		changeDay($_POST['day']);
	}

	if (isset($_POST['show-week'])){
		//Hitta måndagens datum för angiven vecka
		$year = $_POST['year'];
		$week = $_POST['week'];
		
		$timestamp_for_monday = mktime( 0, 0, 0, 1, 1,  $year ) + ((7+1-(date( 'N', mktime( 0, 0, 0, 1, 1,  $year ) )))*86400) + ($week-2)*7*86400 + 1 ;
		$date_for_monday = date( 'Y-m-d', $timestamp_for_monday );
		$_SESSION['date'] = $date_for_monday;
		
		//Ändra js-vecka
		?>
			<script>var newWeek = <?php echo $week; ?></script>
		<?php
	}	




	setDays($_SESSION['date']);
	
	function setDays($date){
		global $date, $monday, $tuesday, $wednsday, $thursday, $friday;
		
		$day = date("w", strtotime($date));
		$monday = $date = date('Y-m-d');
	
		for($i = 2; $i<$day; $i++){
			$monday = date('Y-m-d', strtotime($monday. ' - 1 days'));
		}

		$tuesday = date('Y-m-d', strtotime($monday. ' + 1 days'));
		$wednsday = date('Y-m-d', strtotime($monday. ' + 2 days'));
		$thursday = date('Y-m-d', strtotime($monday. ' + 3 days'));
		$friday = date('Y-m-d', strtotime($monday. ' + 4 days'));
	}

	function changeDay($day){
		global $monday, $tuesday, $wednsday, $thursday, $friday;
		setDays($_SESSION['date']);
		switch ($day){
			case 'måndag':
				$_SESSION['date'] = $monday;
				break;
			case 'tisdag':
				$_SESSION['date'] = $tuesday;
				break;
			case 'onsdag':
				$_SESSION['date'] = $wednsday;
				break;
			case 'torsdag':
				$_SESSION['date'] = $thursday;
				break;
			case 'fredag':
				$_SESSION['date'] = $friday;
				break;
		}
	}


//GET BOOKINGS FOR CURRENT DATE//
	try{

		$currentRoom = "";
		?>
		<script>
			var rooms = [];
		</script>
		<?php
        
		$db->exec("SET NAMES 'utf8'");
		
		$query = "SELECT roombookings.room, roombookings.hour, roombookings.description, rooms.name, roombookings.booker "; 
		$query .= "FROM roombookings LEFT JOIN rooms ON (roombookings.room = rooms.id) ";
		$query .= "WHERE roombookings.date = :date " ;
		$query .= "ORDER BY roombookings.room ASC" ;
		
		$ps = $db->prepare($query);
		$ps->execute([
			'date'=>$_SESSION['date']
		]);
		$result = $ps -> fetchAll();
	
		foreach($result as $row){	
			if ($currentRoom != $row['name']){
				if($currentRoom != ""){
					?><script>
						rooms.push(roomDay);
					</script><?php
				}
				?><script>
					var roomDay = ['<?php echo $row['name']; ?>',[],[],[],[],[],[],[],[],[]];
				</script><?php				
				$currentRoom = $row['name'];
			}
			//correct hour to js array format
			$row['hour'] -= 7;
			$roomDay[$row['hour']] = $row['description'];
			?><script>
				roomDay[<?php echo $row['hour'];?>] = ['<?php echo $row['description'];?>', '<?php echo $row['booker'];?>'];
			</script><?php
		}

			?><script>
				rooms.push(roomDay);
			</script><?php
	}
	catch(Exception $e){
		echo ("Error<br><br>" .$e);
	}
	//Add empty rooms
	try{
		?><script>
		var roomsToPush = [];
		</script><?php
	
		$result = $db->query("SELECT name FROM rooms");		
		foreach($result as $name){
			?><script>
				var roomName = '<?php echo $name['name'];?>';
				var foundName = 0;
			
				for(var i = 0; i < rooms.length; i++){
					if (rooms[i][0] == roomName){
						foundName = 1;
					}
				}
				if(foundName == 0){
						var roomArray = [roomName,'','','','','','','','',''];
						roomsToPush.push(roomArray);
				}
			</script><?php
			
		}
		
		?><script>
		for(var i = 0; i < roomsToPush.length; i++){
			rooms.push(roomsToPush[i]);
		}
		</script><?php
		
	}
	catch(Exception $e){
		echo ("Error<br><br>" .$e);
	}
?>