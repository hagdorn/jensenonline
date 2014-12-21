<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();
?>

<main>
    <div id="administration-wrapper" class="border-box">
        <ul class="nav admin-nav float-left padding-box">
            <li class="admin-nav-items"><a href="">Utbildningar</a></li>
            <li class="admin-nav-items"><a href="">Kurser</a></li>
            <li class="admin-nav-items"><a href="">Lokaler</a></li>
            <li class="admin-nav-items"><a href="">Personal</a></li>
            <li class="admin-nav-items"><a href="">Lärare</a></li>
            <li class="admin-nav-items"><a href="">Studenter</a></li>
        </ul>
        <div id="top-menu">
            <form method="POST" action="">
                <label for="system-search" class="standard-label">Sök i systemet:</label>
                    <input type="text" name="system-search" id="system-search">
                    <!--<button class="small-btns"><img src="../includes/img/delete.png" no-repeat></button>-->
            </form>
        </div>
        <div id="changes-feed" class="float-right border-box"></div>
    </div>
</main>

<?php
    include_footer_files();
?>