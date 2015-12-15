<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<?php
	$usertoedit = $_POST["userToEdit"];
	$usertoeditName = $_POST["username"];
	$usertoeditEmail = $_POST["userEmail"];
	$usertoeditType = $_POST["userType"];	
?>


<html xmlns="http://www.w3.org/1999/xhtml">
<link type="text/css" href="form_styles.css" rel="stylesheet"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit User Form</title>
</head>
<body>
    <form action="update_user.php" method="post" name="editUser" id="EditUser">
        <div id="nameLine">
            <label for="usernameID">Username</label>
            <input name="username" type="text" id="usernameID" value ="<?php echo $usertoeditName;?>" />
        </div>
        <div>    
            <label for="useremailID">Email</label>
            <input name="useremail" type="email" id="useremailID" value="<?php echo $usertoeditEmail;?>" />
        </div>
        <div>
            <label for="usertypeID">Category</label>
            <input name="usertype" type="text" id="usertypeID" value="<?php echo $usertoeditType;?>" />
        </div>
        
        <div>
            <input name="usertoUpdate" type="hidden" value="<?php echo $usertoedit;?>"/>
            <input name="adduser" type="submit" id="adduserID" value="Update" />
            <input name="cancel" type="submit" id="adduserID" value="Cancel" />
        </div>
    </form>


</body>
</html>
