<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<?php
	$usertodelete = $_POST["userToDelete"];
	$usertodeleteName = $_POST["username"];	
?>

<html xmlns="http://www.w3.org/1999/xhtml">
<link type="text/css" href="form_styles.css" rel="stylesheet"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Deletion page</title>
</head>
<body>
        <form action="confirm_delete_user.php" method="post" name="deleteUser" id="DeleteUser">
        <div id="nameLine">
            <label for="usernameID">Confirm Deletion of User: </label>
            <label for="username" ><?php echo $usertodeleteName;?><label/>
        </div>
      
        <div>
            <input name="userToDelete" type="hidden" value="<?php echo $usertodelete;?>"/>
            <input name="deleteUser" type="submit" id="delUserID" value="Confirm" />
            <input name="cancel" type="submit" id="delUserID" value="Cancel" />
        </div>
    </form>


</body>
</html>
