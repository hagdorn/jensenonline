<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();

	if ($_SESSION['type'] != 2 && $_SESSION['type'] != 1) {
		header('Location: index.php');
	}
	
	if (isset($_POST['book'])){
		include('../includes/php/roombookings/addBooking.php');
	}

	if (isset($_POST['cancel'])){
		include('../includes/php/roombookings/removeBooking.php');
	}

	include_once('../includes/php/roombookings/getBookings.php');
	
	$jsDay = date("D", strtotime($_SESSION['date']));
	?><script>var jsDay = '<?php print_r($jsDay);?>'; </script><?php
?>
<!-- body starts here -->
<main>
    <div id="booking-app-wrapper">
        <header class="ignore-markup">
            <div id="days-nav-wrapper">
                <nav class="ignore-markup" id="days-nav">
                    <form method="POST" action="classroombooking.php" id="days-nav-form">
                        <input type="submit" name="day" value="måndag" id="Mon"
                               class="day-btns text-thick">
                        <input type="submit" name="day" value="tisdag" id="Tue"
                               class="day-btns text-thick">
                        <input type="submit" name="day" value="onsdag" id="Wed"
                               class="day-btns text-thick">
                        <input type="submit" name="day" value="torsdag" id="Thu"
                               class="day-btns text-thick">
                        <input type="submit" name="day" value="fredag" id="Fri"
                               class="day-btns text-thick">
                    </form>
                </nav>
                <div class="selects-wrapper">
                    <form method="POST" action="classroombooking.php">
                        <select id="week-booking" name="week" 
                                class="ui-box-shadow dropdown-select text-thick"></select>
                        <select id="year-booking" name="year" 
                                class="ui-box-shadow dropdown-select text-thick"></select>
                        <button type="submit" name="show-week" 
                                class="action-btn text-thick float-right">Visa</button>
                    </form>
                </div>
            </div>
        </header>
        <div id="scheme-table"></div>
        <div id="scheme-footer">
            <div id="cancel-wrapper">
                <form method="POST" action="classroombooking.php">
                    <input type="hidden" class="timeValue" name="time">
                    <input type="hidden" class="classValue" name="class">
                    <button type="submit" name="cancel" id="cancel-booking" 
                            class="ui-box-shadow action-btn text-thick" 
                            alt="Knapp för att avboka ett klassrum">Avboka<img src="../includes/img/cancel-booking.png"></button>
                </form>
            </div>
            <div id="book-wrapper">
                <form method="POST" action="classroombooking.php">
                    <label for="subject" id="course-label">Rubrik:</label>
                    <input type="text" name="booking-title" id="booking-title-input" 
                           class="ui-box-shadow" alt="Fyll i en rubrik för bokningen">
                    <input type="hidden" class="timeValue" name="time">
                    <input type="hidden" class="classValue" name="class">
                    <button type="submit" name="book" alt="Knapp för att boka ett klassrum" 
                            id="book" class="ui-box-shadow action-btn text-thick">Boka<img src="../includes/img/accept-booking.png">
                    </button>
                </form>
            </div>
        </div>
    </div>
</main>
<?php
    include_once('../includes/footer.php');
?>


