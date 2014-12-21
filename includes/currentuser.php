<?php
    echo '<span id="current-user">Välkommen, <span>' . $_SESSION['firstname'] . ' ' . $_SESSION['lastname'] . '</span><img src="' . '../includes/img/' . $_SESSION['gender'] . '.png"></span>';
?>