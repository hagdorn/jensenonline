<?php
    session_start();
    require_once('../includes/functions/functions.php');
    include_header_files();
?>

<div id="survey-wrapper">
    <h1>Skapa enkät</h1>
    <h2>Välj hur enkäten ska se ut nedan.</h2>
    <select id="numOfQuestions"></select>
</div>

<?php
    include_footer_files();
?>