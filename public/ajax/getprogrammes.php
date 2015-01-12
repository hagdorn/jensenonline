<?php
    require_once('../../includes/php/connections/pdoConnect.php');
    //require_once('../../includes/functions/functions.php');
    
    $sort_by = $_REQUEST['sort_by'];
    $stmt = get_programmes('ASC');

    //Move this to functions.php when it works
    function get_programmes($sort_by) {
        $stmt = 'SELECT * FROM programmes ';
        $stmt .= 'ORDER BY name ' . $sort_by;
        
        return $stmt;
    }
    
    if ($sort_by === 'A-Ö') {
        $stmt = get_programmes('ASC');
    }
    else if ($sort_by === 'Ö-A') {
        $stmt = get_programmes('DESC');
    }

    $prep_stmt = $db->prepare($stmt);
    $prep_stmt->execute();
    
    $current_year = date('Y', strtotime('+1 years'));

    echo '<table id="programmes">';
    echo '<tr>';
    echo '<th class="info-head">Namn</th>';
    echo '<th class="info-head">Startades</th>';
    echo '<th class="info-head">Ny start HT ' . $current_year . '</th>';
    echo '<th class="info-head">Längd</th>';
    echo '<th class="info-head">Nästa start</th>';
    echo '<th class="info-head">Redigera</th>';
    echo '<th class="info-head">Ta bort</th>';
    echo '</tr>';

    while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
        
        if ($db_row['next_year'] > 0) {
            $db_row['next_year'] = 'Ja';
        }
        else {
            $db_row['next_year'] = 'Nej';
        }
        echo '<tr>';
        echo '<td class="info-cell">' . $db_row['name'] . '</td>';
        echo '<td class="info-cell">' . $db_row['founded'] . '</td>';
        echo '<td class="info-cell">' . $db_row['next_year'] . '</td>';
        echo '<td class="info-cell">' . $db_row['length'] . ' veckor</td>';
        echo '<td class="info-cell">' . $db_row['next_start'] . '</td>';
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