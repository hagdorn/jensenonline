<?php
    session_start();
    include_header_files();
?>

<!-- body starts here -->

<main>
    <div id="pop-up">

        <h2>Fyll i ny händelse</h2>
        <span>Stäng</span>
        <table>
            <tr>
                <td>
                    <label for="event">Vad:</label>
                </td>
                <td>
                    <input type="text" name="event" id="event">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="time">Tid:</label>
                </td>
                <td>
                    <input type="time" name="time" id="time">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="location">Plats:</label>
                </td>
                <td>
                    <input type="text" name="location" id="location">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="Address">Address:</label>
                </td>
                <td>
                    <input type="text" name="address" id="address">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" name="button" id="button" value="Lägg till">
                </td>
            </tr>
        </table>
    </div>

    <div id="calendar-header">
        <select id="month"></select>
        <select id="year"></select>
        <button id="showButton">Visa</button>
        <button id="deleteButton">Radera alla händelser</button>
    </div>

    <div id="calendar-container">
        <span id="btt">Gå till toppen av sidan</span>
    </div>
</main>

<?php 
    include_once('../includes/footer.php');
?>