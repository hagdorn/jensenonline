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
            <ul>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
                <li><a href="#">Skickade</a></li>
                <li><a href="#">Borttagna</a></li>
                <li><a href="#">Inkorg</a></li>
                <li><a href="#">Skicka nytt</a></li>
            </ul>
            <footer>
                    <ul>
                        <li>Sida 1</li>
                        <li>|<</li>
                        <li><</li>
                        <li>></li>
                        <li>>|</li>
                    </ul>
            </footer>
        </div>
    </div>
</main>

<?php
    include('includes/footer.php');
?>