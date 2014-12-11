<?php
    session_start();
    include_header_files();

	if ($_SESSION['type'] != 2){
		header('Location: index.php');
	}

	include_once('../includes/php/getBookings.php');
?>

<!-- body starts here -->

<main>
    <div id="booking-container">
        <div id="days-wrapper">
            <form method="POST" action="">
                <div id="day-row">
                    <input type="submit" name="monday" id="Mon" class="day-btns" value="måndag">
                    <input type="submit" name="tuesday" id="Tue" class="day-btns" value="tisdag">
                    <input type="submit" name="wednesday" id="Wed" class="day-btns" value="onsdag">
                    <input type="submit" name="thursday" id="Thu" class="day-btns" value="torsdag">
                    <input type="submit" name="friday" id="Fri" class="day-btns" value="fredag">
                </div>
            </form>
            <form method="POST" action="" id="selects-wrapper">
                <select id="sel-week" class="dropdown-selects"></select>
                <select id="sel-year" class="dropdown-selects"></select>
                <input type="submit" name="show-week" id="show-week" class="booking-btns" value="Visa">
            </form>
        </div>
        <div id="scheme-table"></div>
        <div id="scheme-footer">
            <div id="book-wrapper">
                <form method="POST" action="">
                    <label for="subject" id="course-label">Ange kurs:</label>
                    <input type="text" name="classSubject" alt="Fyll i ämne" id="classSubject">
                    <input type="submit" name="book" alt="Knapp för att boka ett klassrum" id="book" class="booking-btns" value="Boka">
                </form>
            </div>
            <div id="cancel-wrapper">
                <form method="POST" action="">
                    <input type="submit" name="cancel" alt="Knapp för att avboka ett klassrum" id="cancel-booking" class="booking-btns" value="Avboka">
                </form>
            </div>
        </div>
    </div>
</main>

<?php
    include_once('../includes/footer.php');
?>