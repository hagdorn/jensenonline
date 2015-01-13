<?php

require_once('../php/connections/pdoConnect.php');

if (isset($_POST['textarea'])) {
    $note = $_POST['textarea'];
    $topic = substr($note, 0, 80);
    
    $query = 'INSERT INTO notes (cut_off_topic, text) ';
    $query .= 'VALUES (:topic, :text)';
    
    $prep_stmt = $db->prepare($query);
    $prep_stmt->bindParam(':topic', $topic);
    $prep_stmt->bindParam(':text', $note);
    $prep_stmt->execute();
    
    header('Location: ../../public/notes.php');
}

?>