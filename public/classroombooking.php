<?php
    session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();

	if ($_SESSION['type'] != 2 && $_SESSION['type'] != 1) {
		header('Location: index.php');
	}
	
	include_once('../includes/php/getBookings.php');

?><pre><?php print_r($_POST); ?></pre>
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
                <select id="sel-week" class="dropdown-selects"></select>
                <select id="sel-year" class="dropdown-selects"></select>
                <input type="submit" name="show-week" id="show-week" class="booking-btns" value="Visa">
            </form>
        </div>
        <div id="scheme-table"></div>
        <div id="scheme-footer">
            <div id="book-wrapper">
                <form method="POST" action="classroombooking.php">
                    <label for="subject" id="course-label">Ange kurs:</label>
                    <input type="text" name="classSubject" alt="Fyll i ämne" id="classSubject">
                    <input type="hidden" id="time" name="time">
                    <input type="hidden" id="class" name="class">
                    <input type="submit" name="book" alt="Knapp för att boka ett klassrum" id="book" class="booking-btns" value="Boka">
                </form>
            </div>
            <div id="cancel-wrapper">
                <form method="POST" action="classroombooking.php">
                    <input type="submit" name="cancel" alt="Knapp för att avboka ett klassrum" id="cancel-booking" class="booking-btns" value="Avboka">
                </form>
            </div>
        </div>
    </div>
</main>


<?php
    include_once('../includes/footer.php');
?>


