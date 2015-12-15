<!doctype html>
<?php
/*
 * Cyber Dynamics
 * Banking Project: 
 * Forex Module
 */

$path = "http://" . $_SERVER['SERVER_NAME'] . "/";
$current_page = $_SERVER["REQUEST_URI"];
?>

<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Forex | Banking Guide</title>
        <meta name="description" content="">
        <link rel="apple-touch-icon" href="/apple-touch-icon.png">
        <link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16" />
        <link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32" />

        <link rel="stylesheet" href="/css/normalize.min.css">
        <link rel="stylesheet" href="/css/bootstrap.min.css">

        <link rel="stylesheet" href="/css/flexslider.css">
        <link rel="stylesheet" href="bower_components/animate.css/animate.min.css">

        <link rel="stylesheet" href="/css/etline-font.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <link href="/css/boilerplate.css" rel="stylesheet" type="text/css">
        <link href="/css/custom.css" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="/css/styles.css">
        <link rel="stylesheet" href="/css/queries.css">

        <link rel="stylesheet" href="/css/charts.css">

        <script src="/scripts/respond.min.js"></script>
        <script src="/scripts/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

        <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body id="top">
        <section class="hero forex">
            <section class="navigation">
                <header>
                    <div class="header-content">
                        <div class="logo"><a href="/forex/"><img src="/bg-logo-forex.png" alt="Banking Guide | Forex"></a></div>
                        <div class="header-nav">
                            <nav>
                                <ul class="primary-nav">
                                    <li><a href="/" title="Go back to the Senteyo">Home</a></li>
                                    <li><a href="/forex/" title="Forex banking">Forex Trading</a></li>
                                    <li><a href="#mobilebanking" title="Mobile Banking">Top Rates</a></li>
                                    <li><a href="#blog">Statistics</a></li>
                                    <li><a href="#blog">Articles</a></li>
                                    <li><a href="#mobilebanking" title="Mobile Banking">Forum</a></li>
                                </ul>
                                <ul class="member-actions">
                                    <?php
                                    echo (($current_page != "/forex/views/login/") && !isset($_GET['login_error_msg'])) ? ''
                                            . '<li><a href="' . $path . 'forex/views/login" class="login">Log in</a></li>' : "";
                                    ?>
                                    <li><a href="#subscribe" class="btn-white btn-small">Subscribe</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="navicon">
                            <a class="nav-toggle" href="#"><span></span></a>
                        </div>
                    </div>
                </header>
            </section>

            <div class="container">
                <div class="row">
                    <div class="col-md-10 xcol-md-offset-1">
                        <div class="hero-content">

                        </div>
                    </div>
                </div>
            </div>
            <?php
            echo ($current_page == "/forex/" || $current_page == "/") ? ''
                    . '<div class="down-arrow floating-arrow"><a href="#floating-arrow-target"><i class="fa fa-angle-down"></i></a></div>' : "";
            ?>
            
        </section>