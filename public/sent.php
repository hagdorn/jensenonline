<?php
	session_start();
    include_header_files();

	//Sätt box till sent
	$_SESSION['box']  = 'sent';
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