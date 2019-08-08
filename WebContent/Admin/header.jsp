<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="hidden-lg pull-right">
                    <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-right">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-chevron-down"></i>
                    </button> -->

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar">
                        <span class="sr-only">Toggle sidebar</span>
                        <i class="fa fa-bars"></i>
                    </button>
                </div>

                <ul class="nav navbar-nav navbar-left-custom">
                    <li class="user dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
<!--                             <img src="images/face6.png" alt="">
 -->                  Welcome,          
 <c:forEach items="${sessionScope.Name}" var="i">
 <span>${i.firstname}</span>
 <span>${i.lastname}</span>
  </c:forEach>                          
<!--   <i class="caret"></i>
 -->                        </a>
                       
                    </li>
                    <li><a class="nav-icon sidebar-toggle"><i class="fa fa-bars"></i></a></li>
                </ul>
            </div>

            <ul class="nav navbar-nav navbar-right collapse" id="navbar-right">
            
                <li>
                    <a href="#">
                        <span>
                        <li><a href="?flag=logout"><i class="fa fa-tasks"></i> Logout</a></li>
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
