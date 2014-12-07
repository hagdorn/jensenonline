<?php
	session_start();
	require_once('php/db.php');
    include('includes/header.php');
    include('includes/typeaccess.php');

	//Set the current box to be 'inbox'
	$_SESSION['box']  = 'inbox';
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