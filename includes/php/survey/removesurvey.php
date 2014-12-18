<?php

    require_once('../connections/pdoConnect.php');

    if (isset($_POST['removesurvey'])) {
        
        $title = $_POST['title'];
        
        $stmt = 'DELETE FROM uploads ';
        $stmt .= 'WHERE title= :title';
        
        $prep_stmt = $db->prepare($stmt);
        $prep_stmt->bindParam(':title', $title);
        $prep_stmt->execute();
        
        header('Location: ../../../public/savedsurveys.php');
    }
?>