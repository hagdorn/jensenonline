<?php
	session_start();
	require_once('db.php');
    include('includes/header.php');
?>

<?php
    include('includes/typeaccess.php');
?>

<!-- body starts here -->

<main>
    <div id="msg-center" class="msg-menu msg-container">
        <?php include('includes/msgmenu.php'); ?>
        <form>
            <table>
                <tr>
                    <td>
                        <label for="receiver">Mottagare:</label>
                    </td>
                    <td>
                        <input type="text" name="receiver" id="receiver" alt="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="subject">Ämne:</label>
                    </td>
                    <td>
                        <input type="text" name="subject" id="subject" alt="">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="msg">Meddelande:</label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <textarea name="message" id="msg" alt=""></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="submit" id="submit" alt="" value="Skicka">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</main>

<?php
    include('includes/footer.php');
?>