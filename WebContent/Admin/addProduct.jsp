<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="h" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="${pageContext.request.contextPath }/Admin/">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Scantocart/Admin</title>

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/brain-theme.css" rel="stylesheet" type="text/css">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Cuprum' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/uniform.min.js"></script>
<script type="text/javascript" src="js/select2.min.js"></script>
<script type="text/javascript" src="js/inputmask.js"></script>
<script type="text/javascript" src="js/autosize.js"></script>
<script type="text/javascript" src="js/inputlimit.min.js"></script>
<script type="text/javascript" src="js/listbox.js"></script>
<script type="text/javascript" src="js/multiselect.js"></script>
<script type="text/javascript" src="js/validate.min.js"></script>
<script type="text/javascript" src="js/tags.min.js"></script>

<script type="text/javascript" src="js/plupload.full.min.js"></script>
<script type="text/javascript" src="js/plupload.queue.min.js"></script>

<script type="text/javascript" src="js/wysihtml5.min.js"></script>
<script type="text/javascript" src="js/toolbar.js"></script>

<script type="text/javascript" src="js/jgrowl.min.js"></script>
<script type="text/javascript" src="js/datatables.min.js"></script>
<script type="text/javascript" src="js/prettify.js"></script>
<script type="text/javascript" src="js/fancybox.min.js"></script>
<script type="text/javascript" src="js/colorpicker.js"></script>
<script type="text/javascript" src="js/timepicker.min.js"></script>
<script type="text/javascript" src="js/fullcalendar.min.js"></script>
<script type="text/javascript" src="js/collapsible.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/application.js"></script>


<script type="text/javascript">
 function addFile()
{
	var fileUpload = document.getElementById("fileUpload");
	
	var newFile = document.createElement("input");
	newFile.setAttribute("type", "file");
	newFile.setAttribute("name", "abc1");
	

	var br = document.createElement("br");
	
	
	fileUpload.appendChild(br);
	fileUpload.appendChild(newFile);
}
 
</script>



</head>

<body>

    <!-- Navbar -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- /navbar -->


    <!-- Switches -->
   <!--  <div class="color-switch">
        <a href="http://demo.interface.club/itsbrain/liquid/dark/index.html" title="Switch to dark verion"></a>
    </div>

    <div class="layout-switch">
        <a href="http://demo.interface.club/itsbrain/fixed/light/index.html" title="Switch to fixed verion"></a>
    </div> -->
    <!-- /switches -->


    <!-- Page header -->
    <div class="container-fluid">
        <div class="page-header">
            <div class="logo"><a href="index.html" title=""><img src="images/logo.png" alt=""></a></div>
            <!-- <ul class="middle-nav">
                <li><a href="#" class="btn btn-default"><i class="fa fa-comments-o"></i> <span>Support tickets</span></a><div class="label label-info">9</div></li>
                <li><a href="#" class="btn btn-default"><i class="fa fa-bars"></i> <span>Statistics</span></a></li>
                <li><a href="#" class="btn btn-default"><i class="fa fa-male"></i> <span>User list</span></a></li>
                <li><a href="#" class="btn btn-default"><i class="fa fa-money"></i> <span>Billing panel</span></a></li>
            </ul> -->
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
        	<%-- <div class="page-title">
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
             --%><!-- /page title -->

            
            <!-- Statistics -->
            <!-- <ul class="row stats">
                <li class="col-xs-3"><a href="#" class="btn btn-default">52</a> <span>new pending tasks</span></li>
                <li class="col-xs-3"><a href="#" class="btn btn-default">520</a> <span>pending orders</span></li>
                <li class="col-xs-3"><a href="#" class="btn btn-default">14</a> <span>new opened tickets</span></li>
                <li class="col-xs-3"><a href="#" class="btn btn-default">48</a> <span>new user registrations</span></li>
            </ul> -->
            <!-- /statistics -->

                
            <!-- Form validation -->
           <form class="form-horizontal validate" action="<%=request.getContextPath()%>/productController" role="form" method="post" enctype="multipart/form-data">
            <input type="hidden" name="flag" value="insert">
                <div class="panel panel-default">
                    <div class="panel-heading"><h6 class="panel-title">Add Product</h6></div>
                    <div class="panel-body">

                        <!-- <div class="alert alert-info fade in widget-inner">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            Form validation for default and styled form components
                        </div> -->
						<div class="form-group">
							<label class="col-sm-2 control-label">Category Name: <span
								class="mandatory">*</span></label>
							<div class="col-sm-10">
								<select name="categoryId" class="required form-control">
									<h:forEach items="${sessionScope.cList}" var="i">
										<option value="${i.categoryId}">${i.categoryName}</option>
									</h:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Sub-Category Name:
								<span class="mandatory">*</span>
							</label>
							<div class="col-sm-10">
								<select name="subcategoryId" class="required form-control">
									<h:forEach items="${sessionScope.subcList}" var="j">
										<option value="${j.subcategoryId}">${j.subcategoryName}</option>
									</h:forEach>

								</select>
							</div>
						</div>
						
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Product Name: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="required form-control" name="productName" id="firstname" required="required">
                            </div>
                         </div>
                       <div class="form-group">
                            <label class="col-sm-2 control-label">Product Size: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <select name="productSize" class="required form-control">
                                <option>XS</option>
                               <option>S</option>
                               <option>M</option>
                               <option>L</option>
                               <option>XL</option>
                                                              <option>28</option>
                               
                                                              <option>30</option>
                               
                                                              <option>32</option>
                               
                                                              <option>36</option>
                                                              <option>38</option>
                                                                                             <option>40</option>
                                                              
                               
                                 </select>
                            </div>
                        </div>
						<div class="form-group">
                            <label class="col-sm-2 control-label">Product Price: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="required form-control" name="productPrice" id="firstname" required="required">
                            </div>
                        </div>
                        
                       <div class="form-group">
                            <label class="col-sm-2 control-label">Product Description: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <textarea rows="5" cols="5" name="productDiscription" class="required form-control" required="required"></textarea>
                            </div>
                        </div>
                        
                       <div class="form-group">
                            <label class="col-sm-2 control-label">Add Photo: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <input type="file"  name="abc1" >
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Floor:<span class="mandatory">*</span></label>
                            <div class="col-sm-10">
							<select name="Floor" class="required form-control">
                                <option>Ground</option>
                               <option>First</option>
                               <option>Second</option>
                                 </select>		                            
                                 </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Rack:<span class="mandatory">*</span></label>
                            <div class="col-sm-10">
							<select name="Rack" class="required form-control">
                                <option>A</option>
                               <option>B</option>
                               <option>C</option>
                               <option>D</option>
                               
                               <option>E</option>
                               
                               <option>F</option>
                               
                                 </select>	                            
                                 </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-2 control-label">Offers: <span class="mandatory">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="required form-control" name="offers" id="firstname" required="required">
                            </div>
                         </div>
	</div>
                        <div class="form-actions text-right">
                            <input type="submit" value="Submit form" class="btn btn-primary">
                        </div>

            </form>
                    </div>
                    
                </div>
            <!-- /form validation -->


            <!-- Footer -->
                <jsp:include page="footer.jsp"></jsp:include>

            <!-- /footer -->

        
        </div>
        <!-- /page content -->

    </div>
    <!-- page container -->

</body>
</html>
