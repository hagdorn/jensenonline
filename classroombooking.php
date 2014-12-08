<?php
    session_start();
    include('includes/header.php');
    include('includes/typeaccess.php');
?>

<!-- body starts here -->

<main>
    <div id="booking-container">
        <div id="scheme-table"></div>
        <div id="scheme-footer">
            <div id="book-wrapper">
                <label for="Boka" class="btn-labels">Klicka här för att boka den markerade tiden</label>
                <input type="submit" name="book" alt="Knapp för att boka ett klassrum" id="book" class="booking-btns" value="Boka">
            </div>
            <div id="cancel-wrapper">
                <label class="btn-labels">Klicka här för att avboka den markerade tiden</label>
                <input type="submit" name="cancel" alt="Knapp för att avboka ett klassrum" id="cancel-booking" class="booking-btns" value="Avboka">
            </div>
        </div>
    </div>
</main>

<?php
    include('includes/footer.php');
?>