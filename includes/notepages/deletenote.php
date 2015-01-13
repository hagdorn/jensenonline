<?php
    require_once('../php/connections/pdoConnect.php');

    $timestamp = $_REQUEST['timestamp'];
    
    $query = 'DELETE FROM notes ';
    $query .= 'WHERE timestamp = :timestamp';
    
    $prep_stmt = $db->prepare($query);
    $prep_stmt->bindParam(':timestamp', $timestamp);
    $prep_stmt->execute();

    header('Location: ../../public/notes.php');
?>