<?php
	session_start();
	require_once('db.php');
    include('includes/header.php');
?>

<?php
    include('includes/typeaccess.php');
?>

<!-- body starts here -->

<main>
    <div id="inbox-container" class="msg-menu msg-container">
        <div>
            <nav>
                <ul>
                    <li><a href="#">Inkorg</a></li>
                    <li><a href="#">Skicka nytt</a></li>
                    <li><a href="#">Skickade</a></li>
                    <li><a href="#">Borttagna</a></li>
                </ul>
            </nav>
        </div>
        
        <div id="inbox">
            <ul id="first-ul">
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
                <li><a href="#">Sed ut perspiciatis unde omnis iste natus error... <span><?php echo date('Y-m-d'); ?></span></a></li>
            </ul>
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