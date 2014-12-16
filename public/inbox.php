<?php
	session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();

	//Set the current box to be 'inbox'
	$_SESSION['box']  = 'inbox';
?>

<!-- body starts here -->

<main>
    <?php include('../includes/msgtemplate.php'); ?>
        <div id="inbox-container">
            <table>
                <?php include('../includes/php/pm/getInbox.php');?>
            
        </div>
    </div> <!-- Closes the template include -->
</main>

<?php
    include_footer_files();
?>