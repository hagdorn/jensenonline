<?php 
	require_once('../connections/pdoConnect.php');

	if($_GET['q']!== ""){
		try{
			
			$query  = "SELECT * FROM useraccounts WHERE LOWER(firstname) LIKE :user OR LOWER(lastname) LIKE :user2";			
			$ps = $db->prepare($query); //Prepared statement
					
			$result = $ps->execute(array(
				'user' => strtolower("%{$_GET['q']}%"),
				'user2' => strtolower("%{$_GET['q']}%")
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