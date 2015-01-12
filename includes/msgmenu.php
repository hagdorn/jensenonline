<?php 
checkUnreadMessages();
global $inboxText;

?>
   

<div id="msg-menu-container">
    <nav>
        <div id="btn-menu-wrapper">
            <button class="inline-btn ui-box-shadow">
                <a href="inbox.php">Inkorg <img src="../includes/img/inbox.png"></a>
            </button>
            <button class="inline-btn ui-box-shadow">
                <a href="sendmsg.php">Skicka <img src="../includes/img/send.png"></a>
            </button>
            <button class="inline-btn ui-box-shadow">
                <a href="sent.php">Skickade <img src="../includes/img/sent.png"></a>
            </button>
            <button class="inline-btn ui-box-shadow">
                <a href="removed.php">Borttaget <img src="../includes/img/removed.png"></a>
            </button>
        </div>
    </nav>
</div>