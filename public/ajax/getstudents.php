<?php
    require_once('../../includes/php/connections/pdoConnect.php');
    //require_once('../../includes/functions/functions.php');
    
    $sort_by = $_REQUEST['sort_by'];
    $stmt = get_students('ASC');

    //Move this to functions.php when it works
    function get_students($sort_by) {
        $stmt = 'SELECT students.*, programmes.name ';
        $stmt .= 'FROM students ';
        $stmt .= 'LEFT JOIN programmes ';
        $stmt .= 'ON students.programme = programmes.id ';
        $stmt .= 'ORDER BY lastname ' . $sort_by;
        
        return $stmt;
    }
    
    if ($sort_by === 'A-Ö') {
        $stmt = get_students('ASC');
    }
    else if ($sort_by === 'Ö-A') {
        $stmt = get_students('DESC');
    }

    $prep_stmt = $db->prepare($stmt);
    $prep_stmt->execute();

    echo '<table id="students">';
    echo '<tr>';
    echo '<th class="info-head">Efternamn</th>';
    echo '<th class="info-head">Förnamn</th>';
    echo '<th class="info-head">Personnummer</th>';
    echo '<th class="info-head">E-mail</th>';
    echo '<th class="info-head">Telefonnummer</th>';
    echo '<th class="info-head">Address</th>';
    echo '<th class="info-head">Utbildning</th>';
    echo '<th class="info-head">Redigera</th>';
    echo '<th class="info-head">Ta bort</th>';
    echo '</tr>';

    while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
        
        echo '<tr>';
        echo '<td class="info-cell">' . $db_row['lastname'] . '</td>';
        echo '<td class="info-cell">' . $db_row['firstname'] . '</td>';
        echo '<td class="info-cell">' . $db_row['social_security_nr'] . '</td>';
        echo '<td class="info-cell">' . $db_row['email'] . '</td>';
        echo '<td class="info-cell">' . $db_row['phone_number'] . '</td>';
        echo '<td class="info-cell">' . $db_row['address'] . '</td>';
        echo '<td class="info-cell">' . $db_row['name'] . '</td>';
        echo '<td class="info-cell">
                  <button data-id="' . $db_row['id'] . '" class="small-btns edit"><img src="../includes/img/edit.png"></button>
              </td>';
        echo '<td class="info-cell">
                  <button data-id="' . $db_row['id'] . '" class="small-btns delete"><img src="../includes/img/delete.png"></button>
              </td>';
        echo '</tr>';
    }

    echo '</table>';
?>