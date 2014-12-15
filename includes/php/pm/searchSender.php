<?php 
	if($_GET['q']!== ""){
		try{
			require_once('../connections/pdoConnect.php');
			$db->exec("SET NAMES 'utf8'");
			
			$query  = "SELECT * FROM useraccounts WHERE firstname LIKE :user";			
			$ps = $db->prepare($query); //Prepared statement
					
			$result = $ps->execute(array(
				'user' => "%{$_GET['q']}%",
				//'class' => $_POST['class'] 
			
			)); 
			$users = $ps->fetchAll();
			$output="";
			foreach($users as $user){
				$output .= "<option value='{$user['firstname']} {$user['lastname']}'></option>";	
			}
			echo $output;
					
		} catch(Exception $exception) {
			echo "Query failed, see error message below: <br /><br />";
			echo $exception. "<br /><br />";
		}
	}

	
?>