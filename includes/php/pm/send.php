<?
	try{
		require_once('../includes/php/connections/pdoConnect.php');
		
		$query = "SELECT firstname, lastname, id FROM useraccounts ";
		$query .= "WHERE CONCAT(firstname, ' ' , lastname) = :name ";
		
		$ps = $db->prepare($query);
		$ps->execute(['name'=>$_POST['receiver']]);
		$result = $ps -> fetch(PDO::FETCH_ASSOC);
		
		$reciever = $result['id'];
		
        $query = "INSERT ";
        $query .= "INTO pm ";
        $query .= "(touser, fromuser, subject, message, status) ";
        $query .= "VALUES (:touser, :fromuser, :subject, :message, :status)";
        
        $ps = $db->prepare($query); 
        $ps->execute(array('touser'=>$reciever, 'fromuser'=>$_SESSION['id'], 'subject'=>$_POST['subject'], 'message'=>$_POST['message'], 'status'=>'unread'));
		
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}
?>