<?php
function random_password( $length = 8 ) {
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+;:,.?";
    $password = substr( str_shuffle( $chars ), 0, $length );
    return $password;
}


$newusername = $_POST["username"];
$newusertype = $_POST["userCategory"];
$newuserpwd = random_password(8);
$newuseremail = $_POST["useremail"];
$usrTime = date('Y-m-d H:i:s');


$servername = "localhost";
$username = "root";
$password = "user";
$dbname = "bankingguide";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($newusertype == 'forex'){
$sql = "INSERT INTO forexusers (FxUserName,FxUserPassword, FxUserEmail, FxUser_Time) VALUES ('$newusername','$newuserpwd','$newuseremail', '$usrTime')";
}

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 