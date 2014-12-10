<?php
	try{
		$currentRoom = "";
		?>
		<script>
			var rooms = [];
		</script>
		<?php
			
		require_once('php/pdoConnect.php');

		$query = "SELECT roombookings.room, roombookings.hour, roombookings.description, rooms.name "; 
		$query .= "FROM roombookings LEFT JOIN rooms ON (roombookings.room = rooms.id) ";
		$query .= "WHERE roombookings.date = :date " ;
		$query .= "ORDER BY roombookings.room ASC" ;
		
		$ps = $db->prepare($query);
		$ps->execute([
			'date'=>date('Y-m-d')
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
					var roomDay = ['<?php echo $row['name']; ?>','','','','','','','',''];
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
	/*
	try{
		
		$result = $db->query("SELECT name FROM rooms");		
		foreach($result as $name){
			?><script>
				var roomName = '<?php echo $name['name']; ?>';
				var foundName = 0;
				var roomsToPush = [];

				for(var i = 0; i < rooms.length; i++){
					rooms[1].push(roomName);
					if (rooms[0][0] == roomName){
						foundName = 1;
					}
					if(foundName == 0){
						var roomArray = [roomName,'','','','','','','',''];
						var roomsToPush.push(roomArray);
					}
				}
				for(var i = 0; i < roomsToPush.length; i++){
					rooms.push(roomsToPush[i]);
				}
			</script><?php
			
		}
		
	}
	catch(Exception $e){
		echo ("Error<br><br>" .$e);
	}
*/


?>
