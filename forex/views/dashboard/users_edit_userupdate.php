<?php

require_once "../../../connection.php";

if (isset($_POST['userid']) && $_POST['useraction'] == 'edit') {

    $user_id = $_POST['userid'];
    $username_edit = $_POST["username"];
    $useremail_edit = $_POST["useremail"];
    $usertype_edit = $_POST["usertype"];
    $userTime_edit = date('Y-m-d H:i:s');

    $db = Db::getDbInstance();

    try {
        $sql = "UPDATE forexusers SET FxUserName = :username_edit, FxUserEmail = :useremail_edit WHERE FxUserId = :user_id; ";
        $query = $db->prepare($sql);
        $result = $query->execute(array(':username_edit' => $username_edit, ':useremail_edit' => $useremail_edit, ':user_id' => $user_id));
    } catch (PDOException $e) {
        echo $e->getCode() . "User not edited";
    }
    echo "User has been successfully edited";
} else {
    echo "edit not successful, check logs";
}
$db = NULL;

/*

  require_once "includes/database.php";

  $sql = "UPDATE forexusers SET FxUserName='$editedName', FxUserEmail='$editedEmail' WHERE FxUserId='$editeduser'; ";


  if ($conn->query($sql) === TRUE) {
  echo "Updated Successfully";
  } else {
  echo "Error: " . $sql . "<br>" . $conn->error;
  }

  $conn->close();
 */
?>