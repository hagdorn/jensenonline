<?php
	session_start();
	require_once('db.php');

    include('includes/header.php');
?>

<main>
<h1>Inloggad</h1>
<div>Hej <?php echo($_SESSION['username']);?></div>

	

<?php
    include('includes/footer.php');
?>