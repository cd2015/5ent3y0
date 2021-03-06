<?php
/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module: Login
 */
//Check the session here after login

require_once('../../../connection.php');
$user_type = "forex";
require_once('header.php');
?>

<body id="top" class="hold-transition skin-teal sidebar-mini">
    <div class="wrapper">
        <?php
        require_once ('user_header.php');
        //require_once ('user_main_sidebar.php');
        //require_once ('user_content_area.php');
        //require_once ('user_control_side_bar.php');
        ?>;

        <!-------Wizard here------->

        <div class="content-wrapper wizard-body">
            <!--   Big container   -->
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">

                        <!--      Wizard container        -->   
                        <div class="wizard-container"> 

                            <div class="card wizard-card ct-wizard-orange" id="wizardProfile">
                                <form action="" method="">
                                    <!--        You can switch "ct-wizard-orange"  with one of the next bright colors: "ct-wizard-blue", "ct-wizard-green", "ct-wizard-orange", "ct-wizard-red"             -->

                                    <div class="wizard-header">
                                        <h3>
                                            <b>BUILD</b> YOUR PROFILE <br>
                                            <small>This information will let us know more about you.</small>
                                        </h3>
                                    </div>
                                    <ul>
                                        <li><a href="#about" data-toggle="tab">About</a></li>
                                        <li><a href="#account" data-toggle="tab">Account</a></li>
                                        <li><a href="#address" data-toggle="tab">Address</a></li>
                                    </ul>

                                    <div class="tab-content">
                                        <div class="tab-pane" id="about">
                                            <div class="row">
                                                <h4 class="info-text"> Let's start with the basic information (with validation)</h4>
                                                <div class="col-sm-4 col-sm-offset-1">
                                                    <div class="picture-container">
                                                        <div class="picture">
                                                            <img src="assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
                                                            <input type="file" id="wizard-picture">
                                                        </div>
                                                        <h6>Choose Picture</h6>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>First Name <small>(required)</small></label>
                                                        <input name="firstname" type="text" class="form-control" placeholder="Andrew...">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Last Name <small>(required)</small></label>
                                                        <input name="lastname" type="text" class="form-control" placeholder="Smith...">
                                                    </div>
                                                </div>
                                                <div class="col-sm-10 col-sm-offset-1">
                                                    <div class="form-group">
                                                        <label>Email <small>(required)</small></label>
                                                        <input name="email" type="email" class="form-control" placeholder="andrew@creative-tim.com">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="account">
                                            <h4 class="info-text"> What are you doing? (checkboxes) </h4>
                                            <div class="row">


                                                <div class="col-sm-10 col-sm-offset-1">
                                                    <div class="col-sm-4">
                                                        <div class="choice" data-toggle="wizard-checkbox">
                                                            <input type="checkbox" name="jobb" value="Design">
                                                            <div class="icon">
                                                                <i class="fa fa-pencil"></i>
                                                            </div>
                                                            <h6>Design</h6>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="choice" data-toggle="wizard-checkbox">
                                                            <input type="checkbox" name="jobb" value="Code">
                                                            <div class="icon">
                                                                <i class="fa fa-terminal"></i>
                                                            </div>
                                                            <h6>Code</h6>
                                                        </div>

                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="choice" data-toggle="wizard-checkbox">
                                                            <input type="checkbox" name="jobb" value="Develop">
                                                            <div class="icon">
                                                                <i class="fa fa-laptop"></i>
                                                            </div>
                                                            <h6>Develop</h6>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="tab-pane" id="address">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h4 class="info-text"> Are you living in a nice area? </h4>
                                                </div>
                                                <div class="col-sm-7 col-sm-offset-1">
                                                    <div class="form-group">
                                                        <labe>Street Name</label>
                                                            <input type="text" class="form-control" placeholder="5h Avenue">
                                                            </div>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <div class="form-group">
                                                                    <label>Street Number</label>
                                                                    <input type="text" class="form-control" placeholder="242">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-5 col-sm-offset-1">
                                                                <div class="form-group">
                                                                    <label>City</label>
                                                                    <input type="text" class="form-control" placeholder="New York...">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-5">
                                                                <div class="form-group">
                                                                    <label>Country</label><br>
                                                                    <select name="country" class="form-control">
                                                                        <option value="Afghanistan"> Afghanistan </option>
                                                                        <option value="Albania"> Albania </option>
                                                                        <option value="Algeria"> Algeria </option>
                                                                        <option value="American Samoa"> American Samoa </option>
                                                                        <option value="Andorra"> Andorra </option>
                                                                        <option value="Angola"> Angola </option>
                                                                        <option value="Anguilla"> Anguilla </option>
                                                                        <option value="Antarctica"> Antarctica </option>
                                                                        <option value="...">...</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="wizard-footer">
                                                <div class="pull-right">
                                                    <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm' name='next' value='Next' />
                                                    <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm' name='finish' value='Finish' />

                                                </div>

                                                <div class="pull-left">
                                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm' name='previous' value='Previous' />
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>	
                                            </form>
                                        </div>
                                    </div> <!-- wizard container -->
                            </div>
                        </div><!-- end row -->
                    </div> <!--  big container -->
                </div>
            </div>
            <?php
            require_once('../footer.php');
            ?>