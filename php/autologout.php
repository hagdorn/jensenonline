<?php
    //If the user have been inactive for the past hour
    if (time() - $_SESSION['timestamp'] > 60*60) {
        
        unset($_SESSION['id'],
			  $_SESSION['type'],
			  $_SESSION['username'],
			  $_SESSION['firstname'],
			  $_SESSION['lastname'],
              $_SESSION['timestamp']
             );
        header('Location: login.php');
        exit;
    }
    else {
        $_SESSION['timestamp'] = time();
    }
?>