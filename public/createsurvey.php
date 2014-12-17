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
        <button id="addOneQuestion" class="action-buttons green-button">Lägg till en ny fråga</button>
        <button id="removeOneQuestion" class="action-buttons red-button">Ta bort en fråga</button>
        <button id="lock-survey" class="action-buttons orange-button">Lås enkäten</button>
        <span id="surveyErrorMsg"></span>
        <div id="submit-container">
            <input type="submit" name="saveSurvey" form="survey-form" class="action-buttons green-button" value="Spara enkät">
            <input type="text" name="filename" form="survey-form" placeholder="Fyll i filnamn">
            <input type="hidden" name="content" id="contentHolder" form="survey-form">
        </div>
    </header>
    <div id="form-container"></div>
</div>

<?php
    include_footer_files();
?>