<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once "../../../connection.php";

$db = Db::getDbInstance();

$query_forex = $db->query('SELECT * FROM forexusers');
$query_banks = $db->query('SELECT * FROM bankusers');
$query_sacco = $db->query('SELECT * FROM saccousers');
$query_microfinance = $db->query('SELECT * FROM microfinusers');
$query_moneytransfer = $db->query('SELECT * FROM moneytansferagents');

$query_last_added_user = $db->query('SELECT * FROM forexusers ORDER BY FxUserId DESC LIMIT 1');
$row = $query_last_added_user->fetchObject();
$recent_forex_name = $row->FxUserName;
$recent_forex_email = $row->FxUserEmail;

$forexusers = $query_forex_result = $query_forex->rowCount();
$bankusers = $query_banks_result = $query_banks->rowCount();
$saccousers = $query_sacco_result = $query_sacco->rowCount();
$microfinusers = $query_microfinance_result = $query_microfinance->rowCount();
$mmagents = $query_moneytransfer_result = $query_moneytransfer->rowCount();
echo "Sickness";
?>

<div id="updatedUsersList">
    <h3 class="widget-user-username"><?php echo $recent_forex_name ?></h3>
    <h5 class="widget-user-desc"><?php echo $recent_forex_email ?> :: Forex was added at 7:20pm | 28-Nov-2015</h5>
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

<?php $db = NULL; ?>