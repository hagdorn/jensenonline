<?php 
    include('includes/header.php');
?>

<?php
    include('includes/typeaccess.php');
?>

<!-- body starts here -->

<main>
    <div id="pop-up">

        <h2>Event information</h2>
        <table>
            <tr>
                <td>
                    <label for="event">Type of event:</label>
                </td>
                <td>
                    <input type="text" name="event" id="event">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="time">Time of event:</label>
                </td>
                <td>
                    <input type="time" name="time" id="time">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="location">Event location:</label>
                </td>
                <td>
                    <input type="text" name="location" id="location">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="Address">Event address:</label>
                </td>
                <td>
                    <input type="text" name="address" id="address">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" name="button" id="button" value="Add event!">
                </td>
            </tr>
        </table>
    </div>

    <div id="header">
        <select id="month"></select>
        <select id="year"></select>
        <button id="showButton">Show</button>
        <button id="deleteButton">Delete all events</button>
    </div>

    <div id="container">
        <span id="btt">Back to top</span>
    </div>
</main>

<?php 
    include('includes/footer.php');
?>