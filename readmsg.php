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
            <!--<ul id="first-ul">
                <li ng-repeat="i in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]">
                    <form method="" action="">
                        <input type="checkbox" id="checkbox{{i}}"><label for="checkbox{{i}}">Christoffer Skogh</label>
                    </form>
                    <a href="#">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium...
                        <span><?php echo date('Y-m-d'); ?></span>
                    </a>
                </li>
            </ul>-->
            
<?php
    
    $stmt = $db->prepare("SELECT * FROM pm");
    $stmt->execute();

    while ($row = $
?>
            
            
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