<?php
    session_start();
    require_once('../includes/functions/functions.php');
    include_header_files();
?>

<div id="survey-wrapper">
    <header>
        <h1>Skapa enkät</h1>
        <h2>Välj hur enkäten ska se ut nedan.</h2>
        <select id="numOfQuestions" class="ui-box-shadow"></select>
        
        <div id="survey-btn-wrapper">
            <button id="addOneQuestion" class="small-btns survey-btns ui-box-shadow" title="Lägg till en fråga">
                <img src="../includes/img/add.png" no-repeat>
            </button>
            <button id="removeOneQuestion" class="small-btns survey-btns ui-box-shadow" title="Ta bort sista frågan">
                <img src="../includes/img/delete.png" no-repeat>
            </button>
            <button id="lock-survey" class="small-btns survey-btns ui-box-shadow" title="Lås och förhandsgranska enkät">
                <img src="../includes/img/lock.png" no-repeat>
            </button>
        </div>
        <span id="surveyErrorMsg"></span>
        <div id="submit-container">
                <button type="submit" name="saveSurvey" form="survey-form" id="save-survey-btn" class="action-button">Spara<img src="../includes/img/save-survey.png" no-repeat>
                </button>
                <input type="text" name="filename" form="survey-form" class="survey-inputs ui-box-shadow" placeholder="Fyll i filnamn">
                <input type="text" name="title" form="survey-form" class="survey-inputs ui-box-shadow" placeholder="Rubrik">
                <input type="hidden" name="content" id="contentHolder" form="survey-form">
                <input type="hidden" name="originalcontent" id="originalcontent" form="survey-form">
        </div>
    </header>
    <div id="form-container"></div>
</div>

<?php
    include_footer_files();
?>