<?php
    session_start();
    require_once('../includes/functions/functions.php');
    include_header_files();
?>

<div id="survey-wrapper">
    <header>
        <h1>Skapa enkät</h1>
        <h2>Välj hur enkäten ska se ut nedan.</h2>
        <select id="numOfQuestions"></select>
        <button id="addOneQuestion">Lägg till en ny fråga</button>
        <span id="surveyErrorMsg"></span>
        <button id="lock-in">Lås enkäten</button>
        <input type="submit" name="saveSurvey" form="survey-form">
        <input type="text" name="filename" form="survey-form">
        <input type="hidden" name="content" id="contentHolder" form="survey-form">
    </header>
    <div id="form-container"></div>
</div>

<?php
    include_footer_files();
?>