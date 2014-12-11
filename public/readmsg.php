<?php
	session_start();
	require_once('../includes/php/connections/db.php');
    include_once('../includes/header.php');
    include_once('../includes/typeaccess.php');
?>

<!-- body starts here -->

<main>
    <div id="inbox-container" class="msg-menu msg-container">
        <?php include_once('../includes/msgmenu.php'); ?>
        
			<?php require_once('../includes/php/pm/getMessage.php'); ?>
			
            <?php //include('includes/msgfooter.php'); ?>
        
    </div>
</main>

<?php
    include_once('../includes/footer.php');
?>