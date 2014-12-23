<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();
?>

<main>
    <div id="administration-wrapper" class="border-box">
        <div id="top-menu">
            <form method="POST">
                <?php include('../includes/searchfield.php'); ?>
                    <!--<button class="small-btns"><img src="../includes/img/delete.png" no-repeat></button>-->
            </form>
            <div class="overview-nav">
                <button class="overview-btns" title="Utbildningar"><img src="../includes/img/education.png" no-repeat></button>
                <button class="overview-btns" title="Kurser"><img src="../includes/img/courses.png" no-repeat></button>
                <button class="overview-btns" title="Lokaler"><img src="../includes/img/facilities.png" no-repeat></button>
                <button class="overview-btns" title="Admin"><img src="../includes/img/admin.png" no-repeat></button>
                <button class="overview-btns" title="Lärare"><img src="../includes/img/teacher.png" no-repeat></button>
                <button class="overview-btns" title="Studenter"><img src="../includes/img/students.png" no-repeat></button>
            </div>
        </div>
        <div id="changes-feed" class="float-right border-box"></div>
    </div>
</main>

<?php
    include_footer_files();
?>