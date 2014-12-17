<?php
	session_start();
	require_once('../includes/functions/functions.php');
    include_header_files();

	if(isset($_POST['sendmessage'])){
		require_once('../includes/php/pm/send.php');
	}
?>

<!-- body starts here -->
<script>
	function showResult(str) {
	  if (window.XMLHttpRequest) {
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	  } else {  // code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xmlhttp.onreadystatechange=function() {
		if (xmlhttp.readyState==4 && xmlhttp.status==200) {
			document.getElementById("recievers").innerHTML=xmlhttp.responseText;
		}
	  }
	  xmlhttp.open("GET","../includes/php/pm/searchSender.php?q="+str,true);
	  xmlhttp.send();
	}
	window.onload=showResult("");
</script>




<main>
	
    <?php include_msg_template(); ?>
    
        <form action="sendmsg.php" method="POST" id="send-msg-form" class="search">
            <table>
                <tr>
                    <td class="space-down labels">
                        <label for="receiver">Mottagare:</label>
                    </td>
                    <td class="space-down column-two">
                       
                       	<datalist id="recievers"></datalist>
                        <input type="text" name="receiver" list="recievers" id="receiver" class="input" alt="Fält för mottagare"  onkeyup="showResult(this.value)" autocomplete="off">
                        
                        <ul id="results" class="results"></ul>
                        
                    </td>
                </tr>
                <tr>
                    <td class="space-down labels">
                        <label for="subject">Ämne:</label>
                    </td>
                    <td class="space-down column-two">
                        <input type="text" name="subject" id="subject" class="input" alt="Fält för ämne" autocomplete="off">
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

