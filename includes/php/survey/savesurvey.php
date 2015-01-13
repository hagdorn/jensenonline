<?php
    session_start();
    require_once('../connections/pdoConnect.php');

try {
    if (isset($_POST['saveSurvey'])) {
        
        $filenameErr = $titleErr = "";
        $filename_is_valid = false;
        $title_is_valid = false;
        
        if (empty($_POST['filename'])) {
            $filenameErr = '*';
        }
        else if (strlen($_POST['filename']) > 30) {
            $filenameErr = '*';
        }
        else {
            $filename_is_valid = true;    
        }
        
        if (empty($_POST['title'])) {
            $titleErr = '*';
        }
        else if (strlen($_POST['title']) > 30) {
            $filenameErr = '*';
        }
        else {
            $title_is_valid = true;
        }
        
        if ($filename_is_valid === true && $title_is_valid === true) {
            
            $content = $_POST['content'];
            $filename = $_POST['filename'];
            $title = $_POST['title'];
            $myfile = fopen('../../surveys/' . $filename . '.txt', 'w') or die('Unable to open file.');

            fwrite($myfile, $content);

            $file_url = '../../surveys/' . $filename . '.txt';
            $file_creator = $_SESSION['firstname'] . ' ' . $_SESSION['lastname'];

            $stmt = 'INSERT INTO surveys (url, creator, filename, title) ';
            $stmt .= 'VALUES (:url, :user, :filename, :title)';

            $prep_stmt = $db->prepare($stmt);
            $prep_stmt->bindParam(':url', $file_url);
            $prep_stmt->bindParam(':user', $file_creator);
            $prep_stmt->bindParam(':filename', $filename);
            $prep_stmt->bindParam(':title', $title);
            $prep_stmt->execute();

            header('Location: ../../../public/createsurvey.php');
        }
    }
    
}
catch(Exception $e) {
    echo $e;
}
?>
