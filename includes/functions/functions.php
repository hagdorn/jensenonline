<?php
	require_once('../includes/php/connections/pdoConnect.php');

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

	function checkUnreadMessages(){
        global $db;
        global $inboxText;

        $query = "SELECT status, toUser FROM pm WHERE toUser = :user AND status = :status";
        $ps = $db->prepare($query);
        $ps->execute(['user' => $_SESSION['id'],'status'=>'unread']);
        $unread = $ps->fetchAll();

        if (sizeof($unread > 0)){
            $inboxText = "Inkorg <span>" .sizeof($unread) ."</span>";
        }
        else{
            $inboxText = "Inkorg";
        }	
    }
	
	function menuFunction(){
	
			checkUnreadMessages();
			global $inboxText;

			?>
			<script>
				var inboxText = '<?php echo $inboxText; ?>';
			</script>
			<?php
	}
?>