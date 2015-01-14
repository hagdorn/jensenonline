<?php
    session_start();
    require_once('../includes/functions/functions.php');
    include_header_files();
    
    $stmt = 'SELECT * FROM surveys ORDER BY timestamp DESC';
    $prep_stmt = $db->prepare($stmt);
    $prep_stmt->execute();
?>
<main>
    <div id="survey-list-wrapper">
        <table id="display-surveys-table">
                <tr>
                    <th class="survey-head">Filnamn</th>
                    <th class="survey-head">Rubrik</th>
                    <th class="survey-head">Utskick</th>
                    <th class="survey-head">Skapad av</th>
                    <th class="survey-head">Datum</th>
                    <th class="survey-head">Borttagning</th>
                </tr>
                <?php

                    while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
                        echo '<tr>';
                        echo '<td class="survey-cell open-new-window highlight-text"><a href="#">' . $db_row['filename'] . '.txt</a></td>';
                        echo '<td class="survey-cell">' . $db_row['title'] . '</td>';
                        echo '<form method="POST" action="../includes/php/survey/removesurvey.php">';
                        echo '<input type="hidden" name="title" value="' . $db_row['title'] . '">';
                        echo '<td class="survey-cell"><input type="submit" name="sendsurvey" class="event-btn highlight-text" value="Skicka"></td>';
                        echo '<td class="survey-cell">' . $db_row['creator'] . '</td>';
                        echo '<td class="survey-cell">' . $db_row['timestamp'] . '</td>';
                        echo '<td class="survey-cell"><input type="submit" name="removesurvey" class="event-btn highlight-text" value="Ta bort enkät"></td>';
                        echo '</form>';
                        echo '</tr>';
                    }
                ?>
        </table>
    </div>
</main>
<?php
    include_footer_files();
?>