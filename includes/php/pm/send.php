<?
	try{
		require_once('php/pdoConnect.php');
		
        $query = "INSERT ";
        $query .= "INTO pm ";
        $query .= "(touser, fromuser, subject, message, status) ";
        $query .= "VALUES (:touser, :fromuser, :subject, :message, :status)";
        
        $ps = $db->prepare($query); 
        $ps->execute(array('touser'=>$_POST['receiver'], 'fromuser'=>$_SESSION['id'], 'subject'=>$_POST['subject'], 'message'=>$_POST['message'], 'status'=>'unread'));
		
	}
	catch(Exception $exception){
		echo('Error<br<br>' . $exception);
	}
?>