<?php

    require_once('../../includes/php/connections/pdoConnect.php');

    $table_name = $_REQUEST['table_name'];
    $row_id = $_REQUEST['row_id'];

    $query = 'DELETE FROM ' . $table_name . ' ';
    $query .= 'WHERE id = :id';

    $prepared_stmt = $db->prepare($query);
    $prepared_stmt->bindParam(':id', $row_id);
    $prepared_stmt->execute();

    header('Location: ../overview.php');
?>