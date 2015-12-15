<?php
/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: login main
 */

$path = "http://" . $_SERVER['SERVER_NAME'] . "/";
$current_page = $_SERVER["REQUEST_URI"];
?>

<?php

echo (($current_page != "/forex/views/login/") && !isset($_GET['login_error_msg'])) ? ''
        . '<li><a href="' . $path . 'forex/views/login" class="login">Log in</a></li>' : "";
?>

<section class="log-in section-padding text-center" id="login">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h3>Admin | Login</h3>
                <p>For Forex Bureau Account Management</p>
<?php
//echo "dont snik";
//echo $msg;
if (isset($_GET['login_error_msg'])) {
    $msg = $_GET['login_error_msg'];
    echo '<div class="status-msg">' . $msg . '</div>'; // Display our message and add a div around it with the class statusmsg
}
?> 
                <form class="login-form" action="loginscript.php" method="POST" role="form">
                    <div class="form-input-group">
                        <i class="fa fa-user"></i>
                        <input type="text"
                               name="usernamefx" 
                               value=""
                               maxlength="40" 
                               title="Enter your Username or Email"
                               placeholder="Enter your Username/Email" 
                               required
                               autofocus="true">
                    </div>
                    <div class="form-input-group">
                        <i class="fa fa-lock"></i>
                        <input type="password"
                               name="passwordfx" 
                               value=""
                               maxlength="15"
                               title="Your password please!"
                               placeholder="Enter your password" 
                               required>
                    </div>
                    <input type="submit"
                           name="sublogin"
                           value="Login"
                           class="btn-fill log-in-btn"/>
                </form>
            </div>
        </div>
    </div>
</section>
