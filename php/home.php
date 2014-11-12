<?php
session_start();
?>

<?php
    include('includes/header.php');
?>
<!-- body starts here -->

<?php
    $_SESSION['authority'] = 'admin';

    switch ($_SESSION['authority']) {
        
        case 'admin': 
            include('includes/adminmenu.php');
            break;
        
        case 'teacher': 
            include('includes/teachermenu.php');
            break;
        
        case 'student': 
            include('includes/studentmenu.php');
            break;
    }
?>

<?php
    include('includes/footer.php');
?>