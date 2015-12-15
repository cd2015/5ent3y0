<?php
$servername = "localhost";
$username = "root";
$password = "user";
$dbname = "bankingguide";



	$editeduser = $_POST["usertoUpdate"];
	$editedName = $_POST["username"];
	$editedEmail = $_POST["useremail"];
	$editedType = $_POST["usertype"];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE forexusers SET FxUserName='$editedName', FxUserEmail='$editedEmail' WHERE FxUserId='$editeduser'; ";


if ($conn->query($sql) === TRUE) {
    echo "Updated Successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 
