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
            Creating a New User Account
            <small>Adding a User to Senteyo DB</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Users</a></li>
            <li class="active">Add New User</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row" id="sowedTest"></div>
        <div class="row">
            <!-- Message Column far left-->
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="alert alert-success alert-dismissable" id="userAddedSuccess">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4>	<i class="icon fa fa-check"></i> User Added Successfully</h4>
                    <div class="box-bodyX">
                        <dl class="dl-horizontal" id="userAddedMessage">
                            <dt>User Account</dt>
                            <dd id="userAccountMsg">Your User Account</dd>
                            <dt>Category</dt>
                            <dd  id="userCategoryMsg">Your Selected Category</dd>
                            <dt>Email</dt>
                            <dd id="userEmailMsg">Your Email Address</dd>
                            <dd>A Verification email has been sent to the above address</dd>
                        </dl>
                    </div>
                </div><!-- /.col -->
            </div>
        </div>

        <div class="row">
            <!-- left column -->
            <div class="col-md-8 col-sm-12 col-xs-12">
                <!-- general form elements -->

                <!-- Add new User -->
                <div class="box box-info">
                    <form method="post" name="register_user" id="RegisterUserForm">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add New User</h3>
                        </div>
                        <div class="box-body">
                            <br>User Account

                            <div class="input-group">
                                <label for="usernameID" class="input-group-addon"><i class="fa fa-user" title="Click to enter the user account name"></i></label>
                                <input name="username" id="usernameID" type="text" maxlength="50" class="form-control" placeholder="User Name" required="true" tabindex="1">
                            </div>
                            <br>
                            <div class="input-group">
                                <label for="useremailID" class="input-group-addon"><i class="fa fa-envelope"></i></label>
                                <input name="useremail" id="useremailID" type="email" maxlength="50" class="form-control" placeholder="Email Address" required="true"  tabindex="2">
                            </div>
                            <br>
                            <p>Category</p>
                            <div class="input-group">
                                <label for="usertypeID" class="input-group-addon"><i class="fa fa-users"></i></label>
                                <select name="usercategory" id="usertypeID" class="form-control" tabindex="3" >
                                    <option value="forex">Forex Bureau</option>
                                    <option value="bank">Bank</option>
                                    <option value="sacco">SACCO</option>
                                    <option value="micro">Microfinance</option>
                                    <option value="moneyTrans">Money Transfer</option>
                                </select>
                            </div>
                            <br>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <input name="userpassword" type="password" maxlength="25" hidden="true" />
                            <input name="adduser" type="submit" id="adduserID" value="Add User" class="btn btn-info pull-right"  tabindex="4"/>
                        </div><!-- /.box-footer -->
                    </form>
                </div><!-- /.box -->

            </div><!--/.col (left) -->
            <!-- right column -->
            <div class="col-md-4 col-sm-12 col-xs-12">
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
                            <li><a href="#">Bank <span class="pull-right badge bg-aqua"><?php echo $bankusers ?></span></a></li>
                            <li><a href="#">SACCO <span class="pull-right badge bg-green"><?php echo $saccousers ?></span></a></li>
                            <li><a href="#">Microfinance<span class="pull-right badge bg-red"><?php echo $microfinusers ?></span></a></li>
                            <li><a href="#">Money Transfer<span class="pull-right badge bg-red"><?php echo $mmagents ?></span></a></li>
                        </ul>
                    </div>
                </div><!-- /.widget-user -->
            </div><!--/.col (right) -->

        </div>   <!-- /.row -->

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="box box-solid">
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
            </div><!-- ./col -->
        </div>   <!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

