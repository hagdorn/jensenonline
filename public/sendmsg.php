<?php
	session_start();
    include_header_files();

	if(isset($_POST['sendmessage'])){
		require_once('..includes/php/pm/send.php');
	}
?>

<!-- body starts here -->

<main>
	
    <?php include_msg_template(); ?>
    
        <form action="sendmsg.php" method="POST" id="send-msg-form">
            <table>
                <tr>
                    <td class="space-down labels">
                        <label for="receiver">Mottagare:</label>
                    </td>
                    <td class="space-down column-two">
                        <input type="text" name="receiver" id="receiver" class="input" alt="Fält för mottagare">
                    </td>
                </tr>
                <tr>
                    <td class="space-down labels">
                        <label for="subject">Ämne:</label>
                    </td>
                    <td class="space-down column-two">
                        <input type="text" name="subject" id="subject" class="input" alt="Fält för ämne">
                    </td>
                </tr>
                <tr>
                    <td class="labels">
                        <label for="msg">Meddelande:</label>
                    </td>
                </tr>
                <tr style="max-width: 100%;">
                    <td colspan="2">
                        <textarea name="message" id="message-area" alt="Fält för meddelande" ></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="sendmessage"  id="send-msg-btn" alt="Knapp för att skicka iväg meddelandet" value="Skicka">
                    </td>
                </tr>
            </table>
        </form>
    </div> <!-- Closes the template include -->
</main>

	
<script src="scripts/nicEdit.js"></script>
	<script type="text/javascript">
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
</script>


<?php
    include_footer_files();
?>

