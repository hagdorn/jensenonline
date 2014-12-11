<?php
	session_start();
	require_once('../includes/php/connections/db.php');
    include_once('../includes/header.php');
?>

<?php
    include_once('../includes/typeaccess.php');

	//Sätt box till inbox
	$_SESSION['box']  = 'deleted';
?>

<!-- body starts here -->

<main>
    <?php include_once('../includes/msgtemplate.php'); ?>
        <div id="inbox">
            <table>
                <?php require_once('../includes/php/pm/getInbox.php');?>
            </table>
        </div>
    </div> <!-- Closes the template include -->
</main>

<?php
    include_once('../includes/footer.php');
?>