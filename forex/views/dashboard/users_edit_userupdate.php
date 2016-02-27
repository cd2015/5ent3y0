<?php

require_once "../../../connection.php";

if (isset($_POST['userid']) && $_POST['useraction'] == 'edit') {

    $user_id = $_POST['userid'];
    $username_edit = $_POST["username"];
    $useremail_edit = $_POST["useremail"];
    $usertype_edit = $_POST["usertype"];
    $userTime_edit = date('Y-m-d H:i:s');

    $db = Db::getDbInstance();
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    try {
        $sql = "UPDATE forexusers SET FxUserName = :username_edit, FxUserEmail = :useremail_edit WHERE FxUserId = :user_id; ";
        $query = $db->prepare($sql);
        $result = $query->execute(array(':username_edit' => $username_edit, ':useremail_edit' => $useremail_edit, ':user_id' => $user_id));
    } catch (PDOException $e) {
        echo $e->getCode() . "User not edited";
    }
    //echo "User has been successfully edited";

    $query_last_added_user = $db->query('SELECT * FROM forexusers ORDER BY FxUserId DESC LIMIT 1');
    $row = $query_last_added_user->fetchObject();

    try {
        $sql_edited_user = "SELECT * FROM forexusers WHERE FxUserId = :user_id; ";
        $query_edited_user = $db->prepare($sql_edited_user);
        $query_edited_user->execute(array(':user_id' => $user_id));

        /* $query_edited_user->bindParam(':user_id', $user_id);
          $query_edited_user->execute();
         */
        $row_edited_user = $query_edited_user->fetch();

        $edited_user_forex_id = $row_edited_user['FxUserId'];
        $edited_user_forex_name = $row_edited_user['FxUserName'];
        $edited_user_forex_email = $row_edited_user['FxUserEmail'];
        $edited_user_forex_status = $row_edited_user['active'];
        $edited_user_forex_date = $row_edited_user['FxUser_Time'];
        //echo $edited_user_forex_id;

        header("Content-type: text/json");
        $arr = array(
            array(
                "first_name" => "Assasins",
                "last_name" => "Creed",
                "age" => "37",
                "email" => "gamer@acgames.com"
            ),
            array(
                "first_name" => "Sowed",
                "last_name" => "Castello",
                "age" => "47",
                "email" => "me@iamcastelli.com"
            )
        );
        echo json_encode($arr, JSON_PRETTY_PRINT);
    } catch (PDOException $e) {
        echo $e->getCode() . "User not found";
    }
} else {
    echo "edit not successful, check logs";
}
$db = NULL;
