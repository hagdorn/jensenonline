	<?php
	session_start();
    require_once('../includes/functions/functions.php');
    include_header_files();
?>

<!-- body starts here -->

<main class="content">
    <div class="msg-menu msg-container">
        <?php 
            include_once('../includes/msgmenu.php');
            require_once('../includes/php/pm/getMessage.php');
            //include('includes/msgfooter.php');
        ?>
    </div>
</main>

<?php
    include_footer_files();
?>