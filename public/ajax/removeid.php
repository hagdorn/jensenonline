<?php
    session_start();
    require_once('../../includes/php/connections/pdoConnect.php');
    
    $table_name = $_REQUEST['table_name'];
    $row_id = $_REQUEST['row_id'];
    $user = $_SESSION['firstname'] . ' ' . $_SESSION['lastname'];
    $action = 'removal';

    $removal_query = 'DELETE FROM ' . $table_name . ' ';
    $removal_query .= 'WHERE id = :id';

    $prep_removal = $db->prepare($removal_query);
    $prep_removal->bindParam(':id', $row_id);
    $prep_removal->execute();

    $activity_query = 'INSERT INTO activities ';
    $activity_query .= '(user, affected_object, action, action_location) ';
    $activity_query .= 'VALUES (:user, :affected_object, :action, :action_location)';

    $prep_activity = $db->prepare($activity_query);
    $prep_activity->bindParam(':user', $user);
    $prep_activity->bindParam(':affected_object', $user); //Needs to change
    $prep_activity->bindParam(':action', $action);
    $prep_activity->bindParam(':action_location', $table_name);

    $prep_activity->execute();
?>