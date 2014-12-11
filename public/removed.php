<?php
	session_start();
    require_once('../includes/functions/functions.php');
    include_header_files();

	//Sätt box till inbox
	$_SESSION['box']  = 'deleted';
?>

<!-- body starts here -->

<main>
    <?php include_msg_template(); ?>
        <div id="inbox">
            <table>
                <?php require_once('../includes/php/pm/getInbox.php');?>
            </table>
        </div>
    </div> <!-- Closes the template include -->
</main>

<?php
    include_footer_files();
?>