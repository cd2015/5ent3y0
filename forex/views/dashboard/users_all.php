<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require_once('../../../connection.php');
require_once('header.php');
?>
<body id="top" class="hold-transition skin-teal sidebar-mini">
    <div class="wrapper" style="min-height: 800px;">
        <?php
        require_once ('admin_header.php');
        require_once ('admin_main-sidebar.php');
        require_once ('users_all_users.php');
        require_once ('admin_control_side_bar.php');
        ?>;
    </div>
    <?php
    require_once('footer.php');
    ?>