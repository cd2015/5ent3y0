<?php
/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: Login
 */
//Check the session here after login

require_once('../../../connection.php');
require_once('header.php');
?>
<body id="top" class="hold-transition skin-teal sidebar-mini">
    <div class="wrapper">
        <?php
        require_once ('user_header.php');
        require_once ('user_main_sidebar.php');
        require_once ('user_content_area.php');
        require_once ('user_control_side_bar.php');
        ?>;
    </div>
    <?php
    require_once('../footer.php');
    ?>