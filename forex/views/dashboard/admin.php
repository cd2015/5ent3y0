<?php
/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: Admin Dashboard
 */

require_once('../../../connection.php');
$user_type = "admin";
require_once('header.php');
?>
<body id="top" class="hold-transition skin-teal sidebar-mini">
    <div class="wrapper">
        <?php
        require_once ('admin_header.php');
        require_once ('admin_main_sidebar.php');
        require_once ('admin_content_area.php');
        require_once ('admin_control_side_bar.php');
        ?>
    </div>
    <?php
    require_once('../footer.php');
    ?>