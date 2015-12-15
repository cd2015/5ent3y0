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
$recent_forex_name = $row->FxUserName;
$recent_forex_email = $row->FxUserEmail;

$forexusers = $query_forex_result = $query_forex->rowCount();
$bankusers = $query_banks_result = $query_banks->rowCount();
$saccousers = $query_sacco_result = $query_sacco->rowCount();
$microfinusers = $query_microfinance_result = $query_microfinance->rowCount();
$mmagents = $query_moneytransfer_result = $query_moneytransfer->rowCount();