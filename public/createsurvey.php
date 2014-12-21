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
        <!--<label for="addOneQuestion" class="standard-label">Lägg till en fråga</label>-->
        <button id="addOneQuestion" class="small-btns" title="Lägg till en fråga">
            <img src="../includes/img/add.png" no-repeat>
        </button>
        <!--<label for="removeOneQuestion" class="standard-label">Ta bort en fråga</label>-->
        <button id="removeOneQuestion" class="small-btns" title="Ta bort en fråga">
            <img src="../includes/img/delete.png" no-repeat>
        </button>
        <button id="lock-survey" class="small-btns" title="Lås enkät">
            <img src="../includes/img/lock.png" no-repeat>
        </button>
        <span id="surveyErrorMsg"></span>
        <div id="submit-container">
            <input type="submit" name="saveSurvey" form="survey-form" class="action-buttons green-button" value="Spara enkät">
            <input type="text" name="filename" form="survey-form" placeholder="Fyll i filnamn">
            <span><?php $filenameErr?></span>
            <input type="text" name="title" form="survey-form" placeholder="Rubrik">
            <span><?php $titleErr?></span>
            <input type="hidden" name="content" id="contentHolder" form="survey-form">
            <input type="hidden" name="originalcontent" id="originalcontent" form="survey-form">
        </div>
    </header>
    <div id="form-container"></div>
</div>

<?php
    include_footer_files();
?>