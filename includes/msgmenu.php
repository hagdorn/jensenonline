<?php 
checkUnreadMessages();
global $inboxText;

?>
   

<div id="msg-menu-container">
    <nav>
        <ul id="msg-menu">
            <li class="msg-items"><a href="inbox.php"><?php echo $inboxText; ?></a></li>
            <!--<li class="msg-items"><a href="inbox.php">Inkorg</a></li>-->
            <li class="msg-items"><a href="sendmsg.php">Skicka nytt</a></li>
            <li class="msg-items"><a href="sent.php">Skickade</a></li>
            <li class="msg-items"><a href="removed.php">Borttaget</a></li>
        </ul>
    </nav>
</div>