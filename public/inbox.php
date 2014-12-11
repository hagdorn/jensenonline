<?php
	session_start();
    include_header_files();

	//Set the current box to be 'inbox'
	$_SESSION['box']  = 'inbox';
?>

<!-- body starts here -->

<main>
    <?php include_once('../includes/msgtemplate.php'); ?>
        <div id="inbox-container">
            <table>
                <?php require_once('../includes/php/pm/getInbox.php');?>
            </table>
        </div>
    </div> <!-- Closes the template include -->
</main>

<?php
    include_footer_files();
?>