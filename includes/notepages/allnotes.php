<div id="list-container">
    <ul id="notes-list" class="reset">
        <?php

            require_once('../php/connections/pdoConnect.php');

            $query = 'SELECT * FROM notes ORDER BY timestamp DESC';

            $prep_stmt = $db->prepare($query);
            $prep_stmt->execute();

            while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<li><span class='topic'>" . $db_row['cut_off_topic'] . "</span><span class='notes-timestamp'>" . $db_row['timestamp'] . "</span>" . "</li>";
            }

        ?>
    </ul>
</div>