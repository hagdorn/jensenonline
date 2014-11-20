<?php
	try{
		require_once('php/pdoConnect.php');
		
        $query = "SELECT * ";
        $query .= "FROM pm ";
        $query .= "WHERE touser = :touser";
     
		$ps = $db->prepare($query);  //Prepared statement
        $ps->execute(array('touser' => $_SESSION['id']));
        $result = $ps -> fetch(PDO::FETCH_ASSOC); // Assosiative array
		
		var_dump($result);
		die;
		
		foreach ($result as $message){
			//echo "<br>".$row['message'];
			echo("<li>");
			echo("<form method='' action=''>  <input type='checkbox' id='" .$message['id'] ."'><label for='" .$message['id'] ."'>" .$message['fromuser'] ."</label></form>");
			echo("<a href='#'>".$message['subject']);
			echo("<span>" .$message['datetime'] ."</span></a></li>");
		}
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}



?>

	<!--
				<li ng-repeat="i in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]">
                    <form method="" action="">
                        <input type="checkbox" id="checkbox{{i}}"><label for="checkbox{{i}}">Christoffer Skogh</label>
                    </form>
                    <a href="#">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium...
                        <span><?php echo date('Y-m-d'); ?></span>
                    </a>
                </li>-->