<?php
	session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();

	//Sätt box till inbox
	$_SESSION['box']  = 'deleted';
?>

<!-- body starts here -->

<main class="content">
    <?php include('../includes/msgtemplate.php'); ?>
        <div id="inbox-container">
            <table class='inboxtable'>
                <?php require_once('../includes/php/pm/getInbox.php');?>
            
        </div>
    </div> <!-- Closes the template include -->
</main>

<?php
    include_footer_files();
?>