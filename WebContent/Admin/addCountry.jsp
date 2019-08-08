<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="h" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>It's Brain - premium responsive admin template by Eugene Kopyov</title>

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/brain-theme.css" rel="stylesheet" type="text/css">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Cuprum' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/select2.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/inputmask.js"></script>
<script type="text/javascript" src="js/plugins/forms/autosize.js"></script>
<script type="text/javascript" src="js/plugins/forms/inputlimit.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/listbox.js"></script>
<script type="text/javascript" src="js/plugins/forms/multiselect.js"></script>
<script type="text/javascript" src="js/plugins/forms/validate.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/tags.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uploader/plupload.full.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/uploader/plupload.queue.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/wysihtml5/wysihtml5.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/wysihtml5/toolbar.js"></script>

<script type="text/javascript" src="js/plugins/interface/jgrowl.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/datatables.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/prettify.js"></script>
<script type="text/javascript" src="js/plugins/interface/fancybox.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/colorpicker.js"></script>
<script type="text/javascript" src="js/plugins/interface/timepicker.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/fullcalendar.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/collapsible.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/application.js"></script>

</head>

<body>

    <!-- Navbar -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- /navbar -->


    <!-- Switches -->
    <div class="color-switch">
        <a href="http://demo.interface.club/itsbrain/liquid/dark/index.html" title="Switch to dark verion"></a>
    </div>

    <div class="layout-switch">
        <a href="http://demo.interface.club/itsbrain/fixed/light/index.html" title="Switch to fixed verion"></a>
    </div>
    <!-- /switches -->


    <!-- Page header -->
    <div class="container-fluid">
        <div class="page-header">
            <div class="logo"><a href="index.html" title=""><img src="images/logo.png" alt=""></a></div>
            <ul class="middle-nav">
                <li><a href="#" class="btn btn-default"><i class="fa fa-comments-o"></i> <span>Support tickets</span></a><div class="label label-info">9</div></li>
                <li><a href="#" class="btn btn-default"><i class="fa fa-bars"></i> <span>Statistics</span></a></li>
                <li><a href="#" class="btn btn-default"><i class="fa fa-male"></i> <span>User list</span></a></li>
                <li><a href="#" class="btn btn-default"><i class="fa fa-money"></i> <span>Billing panel</span></a></li>
            </ul>
        </div>
    </div>
    <!-- /page header -->


    <!-- Page container -->
    <div class="page-container container-fluid">
    	
    	<!-- Sidebar -->
        <jsp:include page="menu.jsp"></jsp:include>
        <!-- /sidebar -->

    
        <!-- Page content -->
        <div class="page-content">

            <!-- Page title -->
        	<div class="page-title">
                <h5><i class="fa fa-warning"></i> Form validation <small>Using validate.js</small></h5>
                <div class="btn-group">
                    <a href="#" class="btn btn-link btn-lg btn-icon dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cogs"></i><span class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li><a href="#">One more line</a></li>
                    </ul>
                </div>
            </div>
            <!-- /page title -->

            
            <!-- Statistics -->
            <ul class="row stats">
                <li class="col-xs-3"><a href="#" class="btn btn-default">52</a> <span>new pending tasks</span></li>
                <li class="col-xs-3"><a href="#" class="btn btn-default">520</a> <span>pending orders</span></li>
                <li class="col-xs-3"><a href="#" class="btn btn-default">14</a> <span>new opened tickets</span></li>
                <li class="col-xs-3"><a href="#" class="btn btn-default">48</a> <span>new user registrations</span></li>
            </ul>
            <!-- /statistics -->

                
            <!-- Form validation -->
            <form class="form-horizontal validate" action="<%=request.getContextPath()%>/countryController" role="form" method="post">
            

            
            <input type="hidden" name="flag" value="insert">
                <div class="panel panel-default">
                    <div class="panel-heading"><h6 class="panel-title">Form validation</h6></div>
                    <div class="panel-body">

                        <div class="alert alert-info fade in widget-inner">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            Form validation for default and styled form components
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Country Name: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="required form-control" name="countryName" id="firstname">
                            </div>
                        </div>

                       
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Country Discription: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <textarea rows="5" cols="5" name="countryDiscription" class="required form-control"></textarea>
                            </div>
                        </div>

                        <div class="form-actions text-right">
                            <input type="submit" value="Submit form" class="btn btn-primary">
                        </div>

                    </div>
                    
                </div>
            </form>
            <!-- /form validation -->


            <!-- Footer -->
            <div class="footer">
                &copy; Copyright 2011. All rights reserved. It's Brain admin theme by <a href="#" title="">Softvan</a>
            </div>
            <!-- /footer -->

        
        </div>
        <!-- /page content -->

    </div>
    <!-- page container -->

</body>
</html>
