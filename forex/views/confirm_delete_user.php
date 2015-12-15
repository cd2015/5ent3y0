<?php
$servername = "localhost";
$username = "root";
$password = "user";
$dbname = "bankingguide";


$deleteduser = $_POST["userToDelete"];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "DELETE FROM forexusers WHERE FxUserId = $deleteduser;";


if ($conn->query($sql) === TRUE) {
    echo "Deleted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 
