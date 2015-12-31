<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require_once('../../../../../connection.php');

require_once('../../header.php');
//require_once('admin_content_dash.php');
?>
<body id="top" class="hold-transition skin-teal sidebar-mini">
    <div class="wrapper" style="min-height: 900px;">
        <?php require_once ('../../admin_header.php') ?>;
        <?php require_once ('../../admin/admin_main_sidebar.php') ?>;
        <?php require_once ('./add_new_user.php') ?>;
    </div>
    <?php
    require_once('../../../footer.php');
    ?>
