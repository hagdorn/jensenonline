<?php
    session_start();
    require_once('../includes/php/connections/pdoConnect.php');

try {
    if (isset($_POST['saveSurvey']) && isset($_POST['filename'])) {

        $content = $_POST['content'];
        $filename = $_POST['filename'];
        $myfile = fopen('../includes/surveys/' . $filename . '.txt', 'w') or die('Unable to open file.');
        
        fwrite($myfile, $content);
        
        $file_url = '../includes/surveys/' . $filename . '.txt';
        $file_creator = $_SESSION['firstname'] . ' ' . $_SESSION['lastname'];
        
        $stmt = 'INSERT INTO uploads (url, creator)';
        $stmt .= 'VALUES (:url, :user)';
        
        $stmt = $db->prepare($stmt);
        $stmt->bindParam(':url', $file_url);
        $stmt->bindParam(':user', $file_creator);
        $stmt->execute();
    }
    
}
catch(Exception $e) {
    echo $e;
}
?>
