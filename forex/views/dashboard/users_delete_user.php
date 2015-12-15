<?php

require_once "../../../connection.php";

if (isset($_POST['userid']) && $_POST['useraction'] == 'delete') {

    $user_id = $_POST['userid'];    
    $db = Db::getDbInstance();

    try {
        $query_fx_user_delete = $db->prepare('DELETE FROM forexusers WHERE FxUserId = :user_id;');
        $query_fx_user_delete->execute(array(':user_id' => $user_id));
    } catch (PDOException $e) {
        echo $e->getCode() . "Deletion Error!";
    }
    echo "User has been successfully deleted";
} else {
    echo "sowed.log: Delete action failed";
}
$db = NULL;
?>
