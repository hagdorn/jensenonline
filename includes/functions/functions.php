<?php
    
    function check_current_page() {
        $basename = substr(strtolower(basename($_SERVER['PHP_SELF'])),0,strlen(basename($_SERVER['PHP_SELF']))-4);
        return $basename;
    }

    function check_usertype() {
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
    }

    function include_footer_files() {
        include_once('../includes/footer.php');
    }
    
    function include_header_files() {
        require_once('../includes/php/connections/db.php');
        include_once('../includes/header.php');
        include_once('../includes/typeaccess.php');
    }
    
    function include_msg_template() {
        include_once('../includes/msgtemplate.php');
    }
?>