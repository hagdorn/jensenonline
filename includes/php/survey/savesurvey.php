<?php
    session_start();
    require_once('../connections/pdoConnect.php');
    
try {
    if (isset($_POST['saveSurvey'])) {
        
            $content = $_POST['content'];
            $filename = $_POST['filename'];
            $title = $_POST['title'];
            $myfile = fopen('../../surveys/' . $filename . '.txt', 'w') or die('Unable to open file.');

            fwrite($myfile, $content);

            $file_url = '../../surveys/' . $filename . '.txt';
            $file_creator = $_SESSION['firstname'] . ' ' . $_SESSION['lastname'];

            $stmt = 'INSERT INTO surveys (url, creator, filename, title) ';
            $stmt .= 'VALUES (:url, :creator, :filename, :title)';

            $prep_stmt = $db->prepare($stmt);
            $prep_stmt->bindParam(':url', $file_url);
            $prep_stmt->bindParam(':creator', $file_creator);
            $prep_stmt->bindParam(':filename', $filename);
            $prep_stmt->bindParam(':title', $title);
            $prep_stmt->execute();

            header('Location: ../../../public/createsurvey.php');
    }
    
}
catch(Exception $e) {
    echo $e;
}
?>
