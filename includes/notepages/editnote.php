<div class="vertical-stripes"></div>
<div class="vertical-stripes"></div>
<ul id="note-block" class="reset">
    <li>
        <span>
            <?php

            require_once('../php/connections/pdoConnect.php');

            $timestamp = $_REQUEST['timestamp'];

            $query = "SELECT timestamp FROM notes ";
            $query .= "WHERE timestamp = :timestamp";

            $prep_stmt = $db->prepare($query);
            $prep_stmt->bindParam(':timestamp', $timestamp);
            $prep_stmt->execute();

            while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {

                if (date('Ymd') == date('Ymd', strtotime($timestamp))) {
                    echo 'Idag';
                }
                else {
                    echo substr($db_row['timestamp'], 0, 10);
                }
            }
            ?>
        </span>
        <span><?php include('../datetime.php'); ?></span>
        <span><?php echo date('H:i'); ?></span>
    </li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li>
        <img src="img/delete.png" no-repeat id="trashcan">
    </li>
</ul>
<form id="note-text" method="post" action="../includes/notepages/updatenote.php">
    <textarea name="textarea" id="notes-area" disabled><?php

            $timestamp = $_REQUEST['timestamp'];

            $query = "SELECT text FROM notes ";
            $query .= "WHERE timestamp = :timestamp";

            $prep_stmt = $db->prepare($query);
            $prep_stmt->bindParam(':timestamp', $timestamp);
            $prep_stmt->execute();

            while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
                echo $db_row['text'];
            }
?></textarea>
    <input type="hidden" name="timestamp" id="timestamp-input" value="">
</form>


