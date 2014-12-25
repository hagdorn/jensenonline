<?php
    require_once('../../includes/php/connections/pdoConnect.php');
    //require_once('../../includes/functions/functions.php');
    
    $stmt = 'SELECT c.*,';
    $stmt .= 't1.firstname AS main_teacher_firstname, ';
    $stmt .= 't1.lastname AS main_teacher_lastname, ';
    $stmt .= 't2.firstname AS secondary_teacher_firstname, ';
    $stmt .= 't2.lastname AS secondary_teacher_lastname ';
    $stmt .= 'FROM courses c ';
    $stmt .= 'LEFT JOIN teachers t1 ON t1.id = c.main_teacher ';
    $stmt .= 'LEFT JOIN teachers t2 ON t2.id = c.secondary_teacher';

    $prep_stmt = $db->prepare($stmt);
    $prep_stmt->execute();

    echo '<table>';
    echo '<tr>';
    echo '<th class="info-head">Namn</th>';
    echo '<th class="info-head">Kursplan</th>';
    echo '<th class="info-head">Betygskriterier</th>';
    echo '<th class="info-head">Huvudsaklig lärare</th>';
    echo '<th class="info-head">Vikarie/föreläsare</th>';
    echo '<th class="info-head">Tillhör utbildning</th>';
    echo '<th class="info-head">Redigera</th>';
    echo '<th class="info-head">Ta bort</th>';
    echo '</tr>';

    while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
        echo '<tr>';
        echo '<td class="info-cell">' . $db_row['name'] . '</td>';
        echo '<td class="info-cell">' . $db_row['curriculum_url'] . '</td>';
        echo '<td class="info-cell">' . $db_row['rating_criteria'] . '</td>';
        echo '<td class="info-cell">' . $db_row['main_teacher_firstname'] . ' ' . $db_row['main_teacher_lastname'] . '</td>';
        echo '<td class="info-cell">' . $db_row['secondary_teacher_firstname'] . ' ' . $db_row['secondary_teacher_lastname'] . '</td>';
        echo '<td class="info-cell">' . $db_row['for_programme'] . '</td>';
        echo '<td class="info-cell">
                  <button class="small-btns"><img src="../includes/img/edit.png"></button>
              </td>';
        echo '<td class="info-cell">
                  <button class="small-btns"><img src="../includes/img/delete.png"></button>
              </td>';
        echo '</tr>';  
    }

    echo '</table>';
?>