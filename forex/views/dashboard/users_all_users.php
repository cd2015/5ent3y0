<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            All Users
            <small>List of Users from the Senteyo DB</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="admin.php"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="users_all.php">Users</a></li>
            <li class="active">All Users</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row" id="sowedTest"></div>
        <div class="row">
            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">

                <div class="box box-solid" id="actionArea"  style="displayX: none">
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
                <div class="box allusers">
                    <div class="box-header">
                        <h3 class="box-title">Senteyo User Accounts</h3>
                        <!--searchBox functionality deactivated until next update -->
                        <div class="box-tools search" style="display: none">
                            <div class="input-group search">                                
                                <input type="search" name="usersearch" id="userSearchId" class="form-control input-sm pull-right" placeholder="Search User">
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-default"><label for="userSearchId"><i class="fa fa-search"></i></label></button>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.box-header -->

                    <!--searchResults functionality deactivated until next update -->
                    <div class="alert alert-success alert-dismissable" id="searchResults"  style="display: none">                        
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <div class="box box-solid">

                            <div class="box-body">
                                <dl class="dl-horizontal">
                                    <dt>User Name</dt>
                                    <dd>CoastForex</dd>
                                    <dt>Email Address</dt>
                                    <dd>sowed@coastforex.com</dd>
                                    <dt>Category</dt>
                                    <dd>Forex Bureau</dd>
                                    <dt>Time Added</dt>
                                    <dd>Nov - 21st 2015</dd>
                                    <dt>Actions</dt>
                                    <dd>
                                        <div class="tools">
                                            <button id="deleteSearchedUser">
                                                <i class="fa fa-trash-o"></i>&nbsp; Delete
                                            </button>
                                            <button id="editSearchedUser">
                                                &nbsp;<i class="fa fa-edit"></i> &nbsp;Edit &nbsp; 
                                            </button>
                                        </div>
                                    </dd>
                                </dl>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
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
                                <th>Username</th>
                                <th>Email Address</th>
                                <th>Status</th>
                                <th>Category</th>
                                <th colspan="2">Date</th>
                            </tr>
                            <?php
                            if ($forexusers > 0) {
                                $query_forex_users = $db->query('SELECT * FROM forexusers ORDER BY FxUserId ASC');

                                $sql = 'SELECT name, color, calories FROM fruit ORDER BY name';

                                foreach ($query_forex_users as $fx_row_user) {
                                    ?>
                                    <tr>
                                        <td class="uname"><?php echo $fx_row_user["FxUserName"]; ?></td>
                                        <td class="uemail"><?php echo $fx_row_user["FxUserEmail"]; ?></td>
                                        <td class="ustatus">
                                            <?php if ($fx_row_user["active"] == 1) { ?>
                                                <span class="label label-primary">Active</span>
                                            <?php } else { ?>
                                                <span class="label label-gray">Inactive</span>
                                            <?php } ?>
                                        </td>
                                        <td class="ucategory"><?php echo "Forex Bureau" ?></td>
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
