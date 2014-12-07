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
    <?php include('includes/msgtemplate.php'); ?>
        <div id="inbox">
            <table>
                <?php require_once('php/pm/getInbox.php');?>
            </table>
        </div>
    </div> <!-- Closes the template include -->
</main>

<?php
    include('includes/footer.php');
?>