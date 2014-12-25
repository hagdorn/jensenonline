<?php
    require_once('../../includes/php/connections/pdoConnect.php');
    //require_once('../../includes/functions/functions.php');
    
    $stmt = 'SELECT * FROM teachers';

    $prep_stmt = $db->prepare($stmt);
    $prep_stmt->execute();

    echo '<table>';
    echo '<tr>';
    echo '<th class="info-head">Förnamn</th>';
    echo '<th class="info-head">Efternamn</th>';
    echo '<th class="info-head">Personnummer</th>';
    echo '<th class="info-head">E-mail</th>';
    echo '<th class="info-head">Telefonnummer</th>';
    echo '<th class="info-head">Address</th>';
    echo '<th class="info-head">Lärare för</th>';
    echo '<th class="info-head">Redigera</th>';
    echo '<th class="info-head">Ta bort</th>';
    echo '</tr>';

    while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
        
        echo '<tr>';
        echo '<td class="info-cell">' . $db_row['firstname'] . '</td>';
        echo '<td class="info-cell">' . $db_row['lastname'] . '</td>';
        echo '<td class="info-cell">' . $db_row['social_security_nr'] . '</td>';
        echo '<td class="info-cell">' . $db_row['email'] . '</td>';
        echo '<td class="info-cell">' . $db_row['phone_number'] . '</td>';
        echo '<td class="info-cell">' . $db_row['address'] . '</td>';
        echo '<td class="info-cell">' . $db_row['teacher_for'] . '</td>';
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