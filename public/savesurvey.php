<?php

if (isset($_POST['saveSurvey']) && isset($_POST['filename'])) {
    
    $content = $_POST['content'];
    $filename = $_POST['filename'];
    
    $myfile = fopen('../includes/surveys/' . $filename . '.txt', 'w') or die('Unable to open file.');
    fwrite($myfile, $content);
    
}

?>
