<%-- 
    Document   : index
    Created on : Jan 25, 2017, 12:57:25 PM
    Author     : Kamitha
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="lk.ijse.service.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="5">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SAMRT FARM | Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="_css/style.css">
        <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
        <script type="text/javascript"
        src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
        <script src="http://code.jquery.com/jquery.min.js"></script>
        <script src="http://getbootstrap.com/dist/js/bootstrap.js"></script>

        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><img src="_img/logo50x50.png" style="height: 40px;width: 40px;"></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><img src="_img/logo50x50.png"
                                               style="height: 40px;width: 40px;"><b>SAMRT</b>FARM</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs">User</span>
                                </a>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>User</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li>
                            <a href="pages/mailbox/mailbox.html">
                                <i class="fa fa-envelope"></i> <span>Messages</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-yellow">12</small>
                                    <small class="label pull-right bg-green">16</small>
                                    <small class="label pull-right bg-red">5</small>
                                </span>
                            </a>
                        </li>
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
                    <!-- Temperature and Humidity box -->
                    <div class="row">
                        <div class="col-md-4" style="height: 250px; width: 170px; background-color: #117a8e;margin-left: 10px;">
                            <img src="_img/weather_logo.gif" id="weatherlogo">
                        </div>
                        <div class="col-md-8" id="tem-hum-box">
                            <div class="row">
                                <h3 class="col-md-12" style="text-align: center;color: #FFFFFF; font-weight: bold">Current
                                    Temperature And Humidity</h3>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 style="text-align: center;color: #FFFFFF;">Temperature</h3>
                                    <div style="margin-left: 50px">
                                        <span style="display: inline; font-size: 60px;color: #FFFFFF">30</span>
                                        <span style="display: inline;font-size: 60px;color: #014754">&#8451;</span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 style="text-align: center;color: #FFFFFF;">Humidity</h3>
                                    <div style="margin-left: 50px">
                                        <span style="display: inline; font-size: 60px;color: #FFFFFF">68</span>
                                        <span style="display: inline;font-size: 60px;color: #014754">%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.Temperature and Humidity box -->

                    <div class="row" style="height: 20px"></div>
                    <div class="row">

                        <%
                            Connection connection = DBConnection.getInstance().getConnection();
                            Statement stm = connection.createStatement();
                            ResultSet rst = stm.executeQuery("SELECT * FROM test  ORDER BY id DESC LIMIT 1");
                            if (rst.next()) {
                        %>
                        <div class="col-md-12"
                             style="background-color: #00a65a;height: 200px;width: 670px;margin-left: 10px;margin-right: 10px">
                            <div class="row" style="height: 20px"></div>
                            <div class="row" style="height: 50px;">
                                <div class="col-md-10">
                                    <span>
                                        <p style="font-size: 25px;text-align: right;font-weight: bold; color: #FFFFFF">Motor Control</p>
                                    </span>
                                </div>
                                <div class="col-md-2">
                                    <!-- Rounded switch -->
                                    <label class="switch">
                                        <input type="checkbox">
                                        <div class="slider round"></div>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="progress progress-striped active">

                                    <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 69%">
                                        <span class="sr-only">% Complete</span>
                                    </div>

                                </div>
                            </div>

                            <h1>Water Level - <%= rst.getString(2)%>%</h1>
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <!-- Main row -->
                    <div class="row">

                    </div>
                    <!-- /.row (main row) -->

                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.0
                </div>
                <strong>Copyright &copy; 2016 - 2017 <a href="">SMART FARM</a>.</strong> All rights
                reserved.
            </footer>

        </div>
        <!-- ./wrapper -->

        <!-- jQuery 2.2.3 -->
        <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.6 -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- Sparkline -->
        <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="plugins/knob/jquery.knob.js"></script>
        <!-- daterangepicker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="plugins/daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/app.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="dist/js/pages/dashboard.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>

    </body>
</html>