<?php
	session_start();
	require_once('php/db.php');
    include('includes/header.php');
?>

<?php
    include('includes/typeaccess.php');
?>

<!-- body starts here -->

<main>
    <div id="inbox-container" class="msg-menu msg-container">
        <?php include('includes/msgmenu.php'); ?>
        <div id="inbox">
            <table>
                	<?php require_once('php/pm/getInbox.php'); ?>

            </table>


            <footer>
                    <ul>
                        <a href="#"><li id="first-li">Sida 1</li></a>
                        <a href="#"><li>|<</li></a>
                        <a href="#"><li><</li></a>
                        <a href="#"><li>></li></a>
                        <a href="#"><li>>|</li></a>
                    </ul>
            </footer>
        </div>
    </div>
</main>

<?php
    include('includes/footer.php');
?>