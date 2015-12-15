<?php

/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: LoginScript
 */


$path = $_SERVER['SERVER_NAME'] . "/";
$dbpath = $path . "connection.php";

require_once "../../../connection.php";

function random_password($length = 8) {
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+;:,.?";
    $password = substr(str_shuffle($chars), 0, $length);
    return $password;
}

$newusername = $_POST["username"];
$newusertype = $_POST["usercategory"];
$newuserpwd = random_password(8);
$newuseremail = $_POST["useremail"];
$usrTime = date('Y-m-d H:i:s');
$fxusercode = 'FXU' . rand(100, 100000);

//Activation hash
$hash = md5(rand(0, 1000));

if ($newusertype == 'forex') {

    $db = Db::getDbInstance();

    $sql = "INSERT INTO forexusers (FxUserCode,FxUserName,FxUserPassword, FxUserEmail, hash, FxUser_Time) VALUES (:fxusercode, :newusername, :newuserpwd, :newuseremail, :hash, :usrTime)";
    $query = $db->prepare($sql);
    $result = $query->execute(array(':fxusercode' => $fxusercode, ':newusername' => $newusername, ':newuserpwd' => $newuserpwd, ':newuseremail' => $newuseremail, ':hash' => $hash, ':usrTime' => $usrTime));



    var_dump($query);
    echo "\n Am in as Castor";
    var_dump($result);/*
 */

    /*
      $sql = "INSERT INTO forexusers (FxUserCode,FxUserName,FxUserPassword, FxUserEmail, hash, FxUser_Time) VALUES ('$fxusercode','$newusername','$newuserpwd','$newuseremail', '$hash', '$usrTime')";
      $result = mysqli_query($conn, $sql);
     */
}

if ($result) {
    echo "New record created successfully";
    $to = $newuseremail; // Send email to our user
    $subject = 'Signup | Verification'; // Give the email a subject
    $message = '

Thanks for signing up!
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.

------------------------
Username: ' . $newusername . '
Password: ' . $newuserpwd . '
------------------------

Please click this link to activate your account:
http://www.senteyo.com/verify.php?email=' . $newuseremail . '&hash=' . $hash . '

'; // Our message above including the link

    $headers = 'From:noreply@senteyo.com' . "\r\n"; // Set from headers
    
    
    echo "--------------------------------------------Mail just here";
    echo '<div style="display:none">';
    $msg = mail($to, $subject, $message, $headers);
    echo '<div>';
     // Send our email
    
    echo "--------------------------------------------Mail just out";
    
    
    //header("Location: addUserRedirect.php");
    //header("Location: #");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

//Closing the connection.
$db = NULL;
?>
