<?php
    require_once('../../includes/php/connections/pdoConnect.php');
    //require_once('../../includes/functions/functions.php');
    
    $sort_by = $_REQUEST['sort_by'];
    $stmt = get_employees('ASC');

    //Move this to functions.php when it works
    function get_employees($sort_by) {
        $stmt = 'SELECT * FROM positions ';
        $stmt .= 'ORDER BY name ' . $sort_by;
        
        return $stmt;
    }
    
    if ($sort_by === 'A-Ö') {
        $stmt = get_employees('ASC');
    }
    else if ($sort_by === 'Ö-A') {
        $stmt = get_employees('DESC');
    }

    $prep_stmt = $db->prepare($stmt);
    $prep_stmt->execute();

    echo '<table id="positions">';
    echo '<tr>';
    echo '<th class="info-head">Tjänst</th>';
    echo '<th class="info-head">Anställd</th>';
    echo '<th class="info-head">Anställd sedan</th>';
    echo '<th class="info-head">Redigera</th>';
    echo '<th class="info-head">Ta bort</th>';
    echo '</tr>';

    while ($db_row = $prep_stmt->fetch(PDO::FETCH_ASSOC)) {
        
        echo '<tr>';
        echo '<td class="info-cell">' . $db_row['name'] . '</td>';
        echo '<td class="info-cell">' . $db_row['employee'] . '</td>';
        echo '<td class="info-cell">' . $db_row['hired_since'] . '</td>';
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