<?php
/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: User Dashboard
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