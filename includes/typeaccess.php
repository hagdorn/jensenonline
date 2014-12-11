<?php
    switch ($_SESSION['type']) {
        
        case 1: 
            include('../includes/adminmenu.php');
            break;
        
        case 2: 
            include('../includes/teachermenu.php');
            break;
        
        case 3: 
            include('../includes/studentmenu.php');
            break;
    }
?>