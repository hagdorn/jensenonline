<?php
    require_once('../php/connections/pdoConnect.php');

    $note = $_POST['textarea'];
    $topic = substr($note, 0, 80);
    $timestamp = $_POST['timestamp'];
    
    $query = 'UPDATE notes ';
    $query .= 'SET cut_off_topic = :topic, text = :text WHERE timestamp = :timestamp';
    
    $prep_stmt = $db->prepare($query);
    $prep_stmt->bindParam(':topic', $topic);
    $prep_stmt->bindParam(':text', $note);
    $prep_stmt->bindParam(':timestamp', $timestamp);
    $prep_stmt->execute();

    header('Location: ../../public/notes.php');
?>