<?php
	session_start();
	require_once('php/db.php');
    include('includes/header.php');
?>

<?php
    include('includes/typeaccess.php');

	//Sätt box till inbox
	$_SESSION['box']  = 'deleted';
?>

<!-- body starts here -->

<main>
    <div id="inbox-container" class="msg-menu msg-container">
        <?php include('includes/msgmenu.php'); ?>
        <div id="inbox">
            <table>
                	<?php require_once('php/pm/getInbox.php');?>
        </div>
    </div>
</main>

<?php
    include('includes/footer.php');
?>