<?php
    session_start();
    require_once('../includes/functions/functions.php');
    include_header_files();
?>
<div id="site-wrapper" class="wrapper full-height">
<main class="full-height">
    <div id="top-bar">
        <button id="all-notes" class="btn brown-btn hide">Alla anteckningar</button>
        <button id="add-note" class="btn brown-btn">Ny</button>
        <input type="submit" form="note-text" value="Klar" id="done-btn" class="btn brown-btn hide">
        <button id="edit" class="btn brown-btn hide">Ändra</button>
    </div>
    <div id="content-wrapper" class="full-height"></div>
</main>
</div>
<?php
    include_footer_files();
?>