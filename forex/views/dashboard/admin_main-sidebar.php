<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/forex/images/users/castor.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Senteyo Admin</p>
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
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="#"><i class="fa fa-circle-o"></i> Home</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i>History</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-users"></i> <span>Users</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="users_all.php"><i class="fa fa-circle-o"></i>All Users</a></li>
                    <li><a href="users_addnew.php"><i class="fa fa-circle-o"></i>Add New</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i>Your Profile</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa  fa-cubes"></i>
                    <span>Operations</span>
                    <span class="label label-primary pull-right">1</span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i>All Operations</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Add New</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-book"></i> <span>Create Notes</span></a></li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-area-chart"></i>
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
            <li>
                <a href="#">
                    <i class="fa fa-th"></i> <span>Manage Currencies</span> <small class="label pull-right bg-green">new</small>
                </a>
            </li>
            <li class="header">CUSTOMERS</li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-exchange"></i>
                    <span>Forex</span>
                    <span class="label label-primary pull-right">25</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-university"></i>
                    <span>Banks</span>
                    <span class="label label-primary pull-right">12</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-money"></i>
                    <span>Microfinance</span>
                    <span class="label label-primary pull-right">8</span>
                </a>
            </li>
            <li class="header">SUPPORT</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Tips</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Help</span></a></li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
