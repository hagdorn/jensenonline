<?php
	session_start();
	require_once('php/db.php');
    include('includes/header.php');
?>

<?php
    include('includes/typeaccess.php');
?>

<!-- body starts here -->

<main>
    <div id="inbox-container" class="msg-menu msg-container">
        <?php include('includes/msgmenu.php'); ?>
        <!--<div id="inbox">            
            
        </div>-->
        <?php include('includes/msgfooter.php'); ?>
    </div>
</main>

<?php
    include('includes/footer.php');
?>