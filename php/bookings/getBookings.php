<?php
	    

	try{
		$date = date('Y-m-d');
		$currentRoom = "";
		?>
		<script>
			var rooms = [];
		</script>
		<?php
			
		require_once('php/pdoConnect.php');
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