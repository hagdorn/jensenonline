<?php

	if(!isset($_SESSION['date'])){
		$_SESSION['date'] = date('Y-m-d');
	}
	$date = $_SESSION['date'];
	setDays($date);

	if (isset($_POST['day'])){
		changeDay($_POST['day']);
	}


	$jsDay = date("D", strtotime($date));
	?><script>var jsDay = '<?php print_r($jsDay);?>'; </script><?php
	//
	
	function setDays($date){
		global $date, $monday, $tuesday, $wednsday, $thursday, $friday;
		
		$day = date("w", strtotime($date));
		$monday = $date = date('Y-m-d');
	
		for($i = 1; $i<$day; $i++){
			$monday = date('Y-m-d', strtotime($monday. ' - 1 days'));
		}

		$tuesday = date('Y-m-d', strtotime($monday. ' + 1 days'));
		$wednsday = date('Y-m-d', strtotime($monday. ' + 2 days'));
		$thursday = date('Y-m-d', strtotime($monday. ' + 3 days'));
		$friday = date('Y-m-d', strtotime($monday. ' + 4 days'));
	}

	function changeDay($day){
		global $date, $monday, $tuesday, $wednsday, $thursday, $friday;
		switch ($day){
			case 'måndag':
				$date = $monday;
				break;
			case 'tisdag':
				$date = $tuesday;
				break;
			case 'onsdag':
				$date = $wednsday;
				break;
			case 'torsdag':
				$date = $thursday;
				break;
			case 'fredag':
				$date = $friday;
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
        
		require_once('connections/pdoConnect.php');
		$db->exec("SET NAMES 'utf8'");
		
		$query = "SELECT roombookings.room, roombookings.hour, roombookings.description, rooms.name "; 
		$query .= "FROM roombookings LEFT JOIN rooms ON (roombookings.room = rooms.id) ";
		$query .= "WHERE roombookings.date = :date " ;
		$query .= "ORDER BY roombookings.room ASC" ;
		
		$ps = $db->prepare($query);
		$ps->execute([
			'date'=>$date
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
					var roomDay = ['<?php echo $row['name']; ?>','','','','','','','','',''];
				</script><?php				
				$currentRoom = $row['name'];
			}
			//correct hour to js array format
			$row['hour'] -= 7;
			$roomDay[$row['hour']] = $row['description'];
			?><script>
				roomDay[<?php echo $row['hour'];?>] = '<?php echo $row['description'];?>';
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