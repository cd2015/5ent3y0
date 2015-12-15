<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Users</title>
</head>

<body>
    
    <table border="1">
        
        <tr>
            <th>
                User Name
            </th>
            <th>
                Email Address
            </th>
            <th>
                User Type
            </th>
            <th>
                Update Time
            </th>
            <th>
                Action
            </th>
        </tr>
    
    <?php
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
		$sql = "SELECT * FROM forexusers";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				?>
				<tr>
            
            <td>
			<?php
			echo $row["FxUserName"];
			?>
			</td>
            
            <td>
			<?php
			echo $row["FxUserEmail"];
			?>
			</td>
			<td>
			<?php
			 echo "Forex Bureau";
			?>
            </td>
			<td>
			<?php
			echo $row["FxUser_Time"]
			
			?>
			</td>
		
		  <td>
                <div>
                    <form action="User_Edit_Form.php" method="POST">
                        <input type="hidden" name="userToEdit" value="<?php echo $row["FxUserId"];?>"/>
                        <input type="hidden" name="username" value="<?php echo $row["FxUserName"];?>"/>
                        <input type="hidden" name="userEmail" value="<?php echo $row["FxUserEmail"];?>"/>
                        <input type="hidden" name="userType" value="Forex Bureau"/>
                        <input type="submit" name="EditUser" value="Edit"/> 
                    </form>
                </div>
                <div>
                    <form action="User_Deletion_Page.php" method="POST">
                        <input type="hidden" name="userToDelete" value="<?php echo $row["FxUserId"];?>"/>
                        <input type="hidden" name="username" value="<?php echo $row["FxUserName"];?>"/>
                        <input type="submit" name="deleteUserConfirm" value="Delete"/> 
                    </form>
                </div>
            </td>
            
        </tr>
		<?php
			}
		} else {
		echo "0 results";
		}
	$conn->close();
	?>

    </table>
</body>
</html>