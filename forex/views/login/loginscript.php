<?php

/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: LoginScript
 */

session_start();

$path = $_SERVER['SERVER_NAME'] . "/";
$dbpath = $path . "connection.php";

require_once "../../../connection.php";

if (isset($_POST['sublogin'])) {
    if (isset($_POST['usernamefx']) && !empty($_POST['usernamefx']) && isset($_POST['passwordfx']) && !empty($_POST['passwordfx'])) {

        $username = $_POST['usernamefx'];
        $password = $_POST['passwordfx'];

        $db = Db::getDbInstance();

        $query = $db->prepare('SELECT FxUserCode, FxUserName, FxUserPassword, active FROM forexusers WHERE FxUserName = :username AND FxUserPassword = :password AND active=1');
        $query->execute(array(':username' => $username, ':password' => $password));

        $query_admin = $db->prepare('SELECT StUserCode, StUserName, StUserPassword, active, StUserType FROM senteyousers WHERE StUserName = :username AND StUserPassword = :password AND active=1');
        $query_admin->execute(array(':username' => $username, ':password' => $password));

        //print_r($query_admin);

        /*
          var_dump($query);

         */
        $match_admin = $query_admin->rowCount();

        //echo "Admins:: " . $match_admin;

        $match = $query->rowCount();

        if ($match == 1) {
            $msg = 'Login Complete! Thanks';
            $row = $query->fetch();
            $_SESSION['usercode'] = $row['1'];
            echo $msg . " :: ";
            echo $_SESSION['usercode'];
            header("Location: ../dashboard/");
        } elseif ($match_admin == 1) {
            $msg = 'Admin Login Complete! Thanks';
            $row = $query_admin->fetch();
            $_SESSION['usercode'] = $row['1'];
            echo $msg . " :: ";
            echo $_SESSION['usercode'];
            header("Location: ../dashboard/admin.php");
        } else {
            $msg = 'Login Failed! <br/>Make sure that you enter the correct details and that you have activated your account.';
            echo $msg;
            header("Location: index.php?login_error_msg=" . $msg);
        }
    } else {
        $msg = 'got lost';
        echo 'msg';
        header("Location: index.php");
    }
    $db = NULL;
}
?>
