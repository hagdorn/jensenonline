<?php


	if(isset($_POST['submit'])){
		
		//kryptera lösen innan koll
		require_once('php/hash.php');
		$hash = new Hash;
		$encPassword = $hash->passwordEncrypt($_POST['username'],$_POST['password']);
			
		//addUser($_POST['username'],$encPassword, 'mail@jensen.se', 1);
		checkUserNameAndPassword($_POST['username'],$encPassword);
	}


	if(!isset($_SESSION['id'])){
		header( 'Location: login.php' );
	}
	


function checkUserNameAndPassword($un, $pwd){
	try{
		require_once('pdoConnect.php');
		
        $query = "SELECT * ";
        $query .= "FROM useraccounts ";
        $query .= "WHERE username = :username ";
        $query .= "AND password = :password";
        
        $ps = $db->prepare($query);  //Prepared statement
        $ps->execute(array('username'=>$un, 'password'=>$pwd));
        $loggedIn = $ps -> fetch(PDO::FETCH_ASSOC); // Assosiative array
		
		if($loggedIn){
			$_SESSION['id'] = $loggedIn['id'];
			$_SESSION['type'] = $loggedIn['type'];
			$_SESSION['username'] = $loggedIn['username'];
		}
					 
	}
	catch(Exception $exception){
		echo ("Error. Se felmeddelande:<br><br>" .$exception);
	}
}

function addUser($username, $password, $email, $type){
	try{	
		require_once('pdoConnect.php');
		
        $query = "INSERT INTO useraccounts ";
        $query .= "(username, password, email, type ) ";
        $query .= "VALUES ";
        $query .= "(:username, :password, :email, :type)";
		
		$ps = $db->prepare($query);  //Prepared statement
        $ps->execute(array('username'=>$username, 'password'=>$password, 'email'=>$email, 'type'=>$type));
		
	}
	catch(Exception $exception){
		
	}
}

?>