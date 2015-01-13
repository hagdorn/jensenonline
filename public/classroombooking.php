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
    <div id="booking-container">
        <div id="days-wrapper">
            <form method="POST" action="classroombooking.php">
                <div id="day-row">
                    <input type="submit" name="day" id="Mon" class="day-btns" value="måndag">
                    <input type="submit" name="day" id="Tue" class="day-btns" value="tisdag">
                    <input type="submit" name="day" id="Wed" class="day-btns" value="onsdag">
                    <input type="submit" name="day" id="Thu" class="day-btns" value="torsdag">
                    <input type="submit" name="day" id="Fri" class="day-btns" value="fredag">
                </div>
            </form>
            <form method="POST" action="classroombooking.php" id="selects-wrapper">
                <select id="sel-week" name="week" class="dropdown-selects"></select>
                <select id="sel-year" name="year" class="dropdown-selects"></select>
                <button type="submit" name="show-week" class="booking-btns">Visa</button>
            </form>
        </div>
        <div id="scheme-table"></div>
        <div id="scheme-footer">
            <div id="cancel-wrapper">
                <form method="POST" action="classroombooking.php">
                    <input type="hidden" class="timeValue" name="time">
                    <input type="hidden" class="classValue" name="class">
                    <button type="submit" name="cancel" id="cancel-booking" class="booking-btns">Avboka<img src="../includes/img/cancel-booking.png"></button>
                </form>
            </div>
            <div id="book-wrapper">
                <form method="POST" action="classroombooking.php">
                    <label for="subject" id="course-label">Ange kurs:</label>
                    <input type="text" id="classSubject" name="classSubject" alt="Fyll i ämne" id="classSubject">
                    <input type="hidden" class="timeValue" name="time">
                    <input type="hidden" class="classValue" name="class">
                    <button type="submit" name="book" alt="Knapp för att boka ett klassrum" id="book" class="booking-btns">Boka<img src="../includes/img/accept-booking.png">
                    </button>
                </form>
            </div>
        </div>
    </div>
</main>


<?php
    include_once('../includes/footer.php');
?>


