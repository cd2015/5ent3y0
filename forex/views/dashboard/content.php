<?php
/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: login main
 */
$db = Db::getDbInstance();

$query_forex = $db->query('SELECT * FROM forexusers');
$query_banks = $db->query('SELECT * FROM bankusers');
$query_sacco = $db->query('SELECT * FROM saccousers');
$query_microfinance = $db->query('SELECT * FROM microfinusers');
$query_moneytransfer = $db->query('SELECT * FROM moneytansferagents');

$query_last_added_user = $db->query('SELECT * FROM forexusers ORDER BY FxUserId DESC LIMIT 1');
$row = $query_last_added_user->fetchObject();
$forexusers = $query_forex_result = $query_forex->rowCount();
$bankusers = $query_banks_result = $query_banks->rowCount();
$saccousers = $query_sacco_result = $query_sacco->rowCount();
$microfinusers = $query_microfinance_result = $query_microfinance->rowCount();
$mmagents = $query_moneytransfer_result = $query_moneytransfer->rowCount();

if ($forexusers > 0) {
    $recent_forex_name = $row->FxUserName;
    $recent_forex_email = $row->FxUserEmail;
}
?>
<body id="top" class="hold-transition skin-teal sidebar-mini">
    <div class="wrapper" style="min-height: 800px;">  
        <header class="main-header dashboard">
            <!-- Logo -->
            <a href="/forex/" class="logo" style="display: none">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <img src="../../../bg-logo-forex.png" alt="Banking Guide | Forex"/>
            </a>
            <!-- Logo -->
            <a href="/forex/" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>f</b>BG</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg" style="display: none"><b>banking</b>GUIDE</span>
                <img src="../../../bg-logo-forex.png" alt="Banking Guide | Forex"/>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu" style="display: none">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">125</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 125 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not join our Forex System now?</p>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Senteyo Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not join our Forex System now?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not join our Forex System now?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not join our Forex System now?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not join our Forex System now?</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-info">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-red"></i> 5 new members joined
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-user text-red"></i> You changed your username
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-calendar"></i>
                                <span class="label label-danger">3</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 3 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Change some Forex Rates
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Add some currencies
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Change details for Branch X on Kings Road
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="/forex/images/users/castor.jpg" class="user-image" alt="user Avatar">
                                <span class="hidden-xs">Sowed Castelli</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="/forex/images/users/castor.jpg" class="img-circle" alt="User Image">
                                    <p>
                                        Sowed Castelli - Forex Admin
                                        <small>Nakasero Branch</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="/forex/" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                        <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>


        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="/image/profile_avatars/crane.png" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Crane Forex Bureau</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- search form -->
                <form action="#" method="get" class="sidebar-form"  style="display: none">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="active treeview">
                        <a href="#">
                            <i class="fa fa-dashboard"></i>Dashboard
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-money"></i> <span>Rates</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i> All Rates</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i>Add Rate</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-sitemap"></i> <span>Branches</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i> All Branches</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i> Add Branch</a></li>
                        </ul>
                    </li>
                    <li class="treeview" style="display: none">
                        <a href="#">
                            <i class="fa fa-share"></i> <span>Multilevel</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                            <li>
                                <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
                                <ul class="treeview-menu">
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                                    <li>
                                        <a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                                        <ul class="treeview-menu">
                                            <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                            <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-pie-chart"></i>
                            <span>Statistics</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i>User Reviews</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i>Rankings</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i>Forex Rating</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i>Charts</a></li>
                        </ul>
                    </li>
                    <li class="treeview" >
                        <a href="#">
                            <i class="fa fa-bell-o"></i>
                            <span>Notifications</span>
                            <span class="label label-info pull-right">4</span>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-gears"></i> <span>Settings</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i>My Account</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i>Branches</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">
                            <i class="fa fa-calendar"></i> <span>To Do</span>
                            <small class="label pull-right bg-red">3</small>
                        </a>
                    </li>
                    <li class="header">SUPPORT</li>
                    <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Tips</span></a></li>
                    <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Help</span></a></li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">

                <div class="row">
                    <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">

                        <div class="box allusers">
                            <div class="box-header">
                                <h3 class="box-title">My Rates</h3>
                            </div><!-- /.box-header -->
                            <div class="example-modal" id="userOperation">
                                <div class="modal modal-danger deleteUser">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">Deleting User</h4>
                                            </div>
                                            <div class="modal-body">
                                                <p>You are about to delete 
                                                    <span class="name" style="font-size:15px; font-weight: 600">Crane Forex Bureau</span>,<br/> with email address 
                                                    <span class="email" style="font-size:15px; font-weight: 600">sowed@emil.com </span> from the Database
                                                </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button id="cancel" type="button" class="btn btn-outline pull-left" data-dismiss="modal">Cancel</button>
                                                <button id="confirm" type="button" class="btn btn-outline">Confirm</button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
                                <div class="modal modal-info editUser">
                                    <div class="modal-dialog  bg-teal">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">Editing User</h4>
                                            </div>
                                            <form method="post" name="edit_user" id="editUserForm">
                                                <div class="modal-body">
                                                    <!-- general form elements -->
                                                    <!-- Editing new User -->
                                                    <div class="box box-infos">
                                                        <div class="box-body">
                                                            <br>User Account
                                                            <div class="input-group">
                                                                <label for="usernameID" class="input-group-addon"><i class="fa fa-user" title="Click to enter the user account name"></i></label>
                                                                <input name="username" id="usernameID" type="text" maxlength="50" class="form-control" placeholder="User Name" required="true">
                                                            </div>
                                                            <br>
                                                            <div class="input-group">
                                                                <label for="useremailID" class="input-group-addon"><i class="fa fa-envelope"></i></label>
                                                                <input name="useremail" id="useremailID" type="email" maxlength="50" class="form-control" placeholder="Email Address" required="true">
                                                            </div>
                                                            <br>
                                                            <p>Category</p>
                                                            <div class="input-group">
                                                                <label for="usertypeID" class="input-group-addon"><i class="fa fa-users"></i></label>
                                                                <select name="usercategory" id="usertypeID" class="form-control" >
                                                                    <option value="forex">Forex Bureau</option>
                                                                    <option value="bank">Bank</option>
                                                                    <option value="sacco">SACCO</option>
                                                                    <option value="micro">Microfinance</option>
                                                                    <option value="moneyTrans">Money Transfer</option>
                                                                </select>
                                                            </div>
                                                            <br>
                                                            <input name="userpassword" type="password" maxlength="25" hidden="true" />
                                                        </div><!-- /.box-body -->
                                                    </div><!-- /.box -->
                                                </div>
                                                <div class="modal-footer">
                                                    <button id="cancel" type="button" class="btn btn-outline pull-left" data-dismiss="modal">Cancel</button>
                                                    <input id="confirm"  name="edituser" type="button" value="Confirm Edit" class="btn btn-info confirm-edit pull-right"/>
                                                </div>    
                                            </form>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
                            </div><!-- /.example-modal -->

                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <tr>
                                        <th>Currency</th>
                                        <th>Buying</th>
                                        <th>Selling</th>
                                        <th>Code</th>
                                        <th colspan="2">Last Updated</th>
                                    </tr>
                                    <?php
                                    if ($forexusers > 0) {
                                        $query_forex_users = $db->query('SELECT * FROM forexusers ORDER BY FxUserId ASC');

                                        $sql = 'SELECT name, color, calories FROM fruit ORDER BY name';

                                        foreach ($query_forex_users as $fx_row_user) {
                                            ?>
                                            <tr>
                                                <td class="ucategory"><?php echo "Forex Bureau" ?></td>
                                                <td class="uname"><?php echo $fx_row_user["FxUserName"]; ?></td>
                                                <td class="uemail"><?php echo $fx_row_user["FxUserEmail"]; ?></td>
                                                <td class="ustatus">
                                                    <?php if ($fx_row_user["active"] == 1) { ?>
                                                        <span class="label label-primary">Active</span>
                                                    <?php } else { ?>
                                                        <span class="label label-gray">Inactive</span>
                                                    <?php } ?>
                                                </td>
                                                <td class="udate"><?php echo $fx_row_user["FxUser_Time"] ?></td>
                                                <td>
                                                    <ul class="tools" id="<?php echo $fx_row_user["FxUserId"] ?>">
                                                        <i class="fa fa-trash-o" title="Delete <?php echo $fx_row_user["FxUserName"]; ?>"></i>
                                                        <i class="fa  fa-edit" title="Edit <?php echo $fx_row_user["FxUserName"]; ?>"></i>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <?php
                                        }
                                        $db = NULL;
                                    } else {
                                        ?>
                                        <tr>
                                            <td colspan="5">
                                                <p style="text-align: center; padding: 20px; background-color: #F9C9C9; cursor: help" title="No users in system">There are currently no registered Users</p>
                                            </td>
                                        </tr>';
                                    <?php }
                                    ?>


                                    <tr>
                                        <td class="ucategory">
                                            <i class="fa fa-dollar pull-left"></i><span>USD</span>
                                        </td>
                                        <td class="currency">US Dollar</td>
                                        <td class="buying">3500</td>
                                        <td class="selling">3800</td>
                                        <td class="udate">Monday, Dec 12 2015</td>
                                        <td>
                                            <ul class="tools" id="99">
                                                <i class="fa fa-trash-o" title="Delete"></i>
                                                <i class="fa  fa-edit" title="Edit"></i>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="ucategory">
                                            <i class="fa fa-gbp pull-left"></i><span>GBP</span>
                                        </td>
                                        <td class="currency">Pound Sterling</td>
                                        <td class="buying">5100</td>
                                        <td class="selling">5200</td>
                                        <td class="udate">Tuesday, Dec 12 2015</td>
                                        <td>
                                            <ul class="tools" id="99">
                                                <i class="fa fa-trash-o" title="Delete"></i>
                                                <i class="fa  fa-edit" title="Edit"></i>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="ucategory">
                                            <i class="fa fa-eur pull-left"></i><span>EUR</span>
                                        </td>
                                        <td class="currency">European Euro</td>
                                        <td class="buying">3720</td>
                                        <td class="selling">3520</td>
                                        <td class="udate">Friday, Dec 12 2015</td>
                                        <td>
                                            <ul class="tools" id="99">
                                                <i class="fa fa-trash-o" title="Delete"></i>
                                                <i class="fa  fa-edit" title="Edit"></i>
                                            </ul>
                                        </td>
                                    </tr>

                                </table>
                            </div><!-- /.box-body -->
                            <div class="box-footer clearfix no-border" style="background-color: rgb(246, 254, 254)">
                                <div class="box-tools pull-left">
                                    <ul class="pagination pagination-sm inline">
                                        <li><a href="#">&laquo;</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">&raquo;</a></li>
                                    </ul>
                                </div>
                                <a id="addUser" class="btn btn-info pull-right" href="users_addnew.php"><i class="fa fa-user-plus"></i> Add User</a>
                            </div><!-- /.box-footer -->
                        </div><!-- /.box -->



                        <div class="box box-solid" id="actionArea">
                            <div class="box-header with-border">
                                <i class="fa fa-lightbulb-o"></i>
                                <h3 class="box-title">Please Note</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <dl class="dl-horizontal">
                                    <dt>User Name</dt>
                                    <dd>This stands for the name of the account the Client uses to log into Senteyo.</dd>
                                    <dd>It can be any name related to the Client's institution as long as its unique to them. For example Crane Forex Bureau may use a name such as CraneForex.</dd>
                                    <dt>Email Address</dt>
                                    <dd>This should be a valid email address acknowledged by the institution.</dd>
                                    <dd>The password generation link is sent to this address to be completed by the Account holder.</dd>
                                    <dt>Category</dt>
                                    <dd>This refers to any the different institutions registered on our platform. Such as Forex Bureaus, Banks.</dd>
                                </dl>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
                    <!-- right column -->
                    <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                        <!-- Widget: user widget style 1 -->
                        <div class="box box-widget widget-user-2">
                            <!-- Add the bg color to the header using any of the bg-* classes -->
                            <div class="widget-user-header bg-teal">
                                <div class="widget-user-image">
                                    <i class="fa fa-user-plus img-circle-icon"></i>
                                    <img class="img-circle" src="/forex/images/otput/dahabshir.png" alt="">
                                </div><!-- /.widget-user-image -->
                                <div id="updatedUsersList">
                                    <?php if ($forexusers > 0) { ?>
                                        <h3 class="widget-user-username"><?php echo $recent_forex_name ?></h3>
                                        <h5 class="widget-user-desc"><?php echo $recent_forex_email ?> :: Forex was added at 7:20pm | 28-Nov-2015</h5>
                                    <?php } else { ?>                                
                                        <h3 class="widget-user-username">Forex Empty</h3>
                                        <h5 class="widget-user-desc">Currently there are no Forex Users</h5>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a href="#">Forex Bureaus <span class="pull-right badge bg-blue" id="forexUsersListed"><?php echo $forexusers ?></span></a></li>
                                    <li><a href="#">Banks <span class="pull-right badge bg-aqua"><?php echo $bankusers ?></span></a></li>
                                    <li><a href="#">SACCOs <span class="pull-right badge bg-green"><?php echo $saccousers ?></span></a></li>
                                    <li><a href="#">Microfinance<span class="pull-right badge bg-red"><?php echo $microfinusers ?></span></a></li>
                                    <li><a href="#">Money Transfer<span class="pull-right badge bg-red"><?php echo $mmagents ?></span></a></li>
                                </ul>
                            </div>
                        </div><!-- /.widget-users update -->
                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <i class="fa fa-users"></i>
                                <h3 class="box-title">Status of Users</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <div class="box-footer no-padding">
                                    <ul class="nav nav-stacked">
                                        <li><a href="#">Active<span class="pull-right badge bg-aqua"><?php echo $forexusers ?></span></a></li>
                                        <li><a href="#">Inactive <span class="pull-right badge bg-red"><?php echo $saccousers ?>1</span></a></li>
                                    </ul>
                                </div>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <i class="fa fa-lightbulb-o"></i>
                                <h3 class="box-title">Please Note</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <dl>
                                    <dt>Active Users</dt>
                                    <dd>Users become active once they have confirmed registration with their email address</dd>
                                    <dt>Inactive Users</dt>
                                    <dd>Users registered but have not yet confirmed their with their email address activation</dd>
                                    <dd>It is recomended you follow up such users with a call or an email resent to their email address</dd>
                                </dl>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
                </div>
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </div>



    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tabX">Stats Tab Content</div><!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane active" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>
                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Some information about this general settings option
                        </p>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Other sets of options are available
                        </p>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div><!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div><!-- /.form-group -->
                </form>
            </div><!-- /.tab-pane -->
        </div>
    </aside><!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>