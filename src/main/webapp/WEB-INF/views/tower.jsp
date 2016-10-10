<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Anita Garje">
	<title>Tower</title>
	
	<!-- Bootstrap Core CSS -->
   <!--  <link href="css/bootstrap.min.css" rel="stylesheet">  -->
    
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" >

    <!-- MetisMenu CSS -->
    <!-- <link href="css/metisMenu.min.css" rel="stylesheet"> -->
    
     <link href="<c:url value="/resources/css/metisMenu.min.css"/>" rel="stylesheet" >

    <!-- Custom CSS 
    <link href="css/sb-admin-2.css" rel="stylesheet">-->
      <link href="<c:url value="/resources/css/sb-admin-2.css"/>" rel="stylesheet" >

    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">

   <!-- DataTables CSS -->
    <link href="<c:url value="/resources/css/dataTables.bootstrap.css"/>" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<c:url value="/resources/css/dataTables.responsive.css"/>" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="wrapper">
	<nav class="navbar navbar-default navbar-static-top" style="margin-bottom: 0" ><!-- creates the navbar note that it's not div its nav tag -->
		<div class="navbar-header"><!-- it is like header n body of HTML page -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavBar">
			<span class="icon-base"></span>
			<span class="icon-base"></span>
			<span class="icon-base"></span>
			</button>
			 <a class="navbar-brand" href="#" >REAL ESTATE AGENCY</a>
		</div>
		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					<i class="fa fa-envelope fa-fw" ></i><i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-messages">
					<li>
						<a href="#">
							<div>
								<strong> Yogita Garje</strong>
								<span class="pull-right text-muted ">
								<em>yesterday</em>
								</span>
							</div>
							<div>
							Hello Cholu.Please Hire Me !!! :D
							</div>
						 </a>
					</li>
						<li>
						<a href="#">
							<div>
								<strong> Sandip Garje</strong>
								<span class="pull-right text-muted ">
								<em>yesterday</em>
								</span>
							</div>
							<div>
							Hello Dadde.Please Hire Me !!! :D
							</div>
						 </a>
					</li>
						<li>
						<a href="#">
							<div>
								<strong> Asha Garje</strong>
								<span class="pull-right text-muted ">
								<em>yesterday</em>
								</span>
							</div>
							<div>
							didda!!!Do you Miss Me !!! :D
							</div>
						 </a>
					</li>
						<li>
						<a href="#">
							<div>
								<strong> Dnyaneshwar Garje</strong>
								<span class="pull-right text-muted ">
								<em>yesterday</em>
								</span>
							</div>
							<div>
							When are u going to marry :D
							</div>
						 </a>
					</li>
				
				</ul>
			</li>
			        <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                   <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
                </ul>
              <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dashboard fa-fw"></i> Reports<span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Flat booking</a>
                                </li>
                                <li>
                                    <a href="#">Receipt</a>
                                </li>
                                 <li>
                                    <a href="#">Demand</a>
                                </li>
                                <li>
                                    <a href="#">Debit</a>
                                </li>
                                  <li>
                                    <a href="#">Credit</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-cogs fa-fw" ></i> Masters<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Sectors</a>
                                </li>
                                <li>
                                    <a href="#">Sectors</a>
                                </li>
                                <li>
                                    <a href="#">Towers</a>
                                </li>
                                <li>
                                    <a href="#">Floors</a>
                                </li>
                                <li>
                                    <a href="#">Units</a>
                                </li>
                                 <li>
                                    <a href="#">Tower Stage Completion</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-users fa-fw"></i> CRM<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                              <li>
                                    <a href="#">Flat Booking</a>
                                </li>
                                <li>
                                    <a href="#">Payment Schedule</a>
                                </li>
                                <li>
                                    <a href="#">Flat Cancellation</a>
                                </li>
                                </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-money fa-fw"></i> Payment<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                              <li>
                                    <a href="#">Demand Note</a>
                                </li>
                                <li>
                                    <a href="#">Receipt</a>
                                </li>
                                <li>
                                    <a href="#">Debit Note</a>
                                </li>
                                 <li>
                                    <a href="#">Credit Note</a>
                                </li>
                                 <li>
                                    <a href="#">Cancellation Charges</a>
                                </li>
                             </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->    
</nav>

<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Towers</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Towers
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <c:url var="addAction" value="/addTower" ></c:url>
                  				 <form:form action="${addAction}" method="POST" commandName="tower">
									      <table>
									      <c:if test="${!empty tower.code}">
											<div class="form-group">
													<form:label class="col-sm-2 control-label" path="id">
														<spring:message text="ID"/>
													</form:label>
												<div class="col-sm-10" style="padding-bottom:5px;">
													<form:input class="form-control" placeholder="1" path="id" readonly="true" size="8"  disabled="true" />
													<form:hidden class="form-control" placeholder="1" path="id" />
													</div>
											</div>
											</c:if>
									       
									       <tr>
									           <td><form:label path="code">Tower Code:</form:label></td>
									           <td><form:input path="code" value="${tower.code}"/></td>
									       </tr>
									        <tr>
									           <td><form:label path="description">Tower Description:</form:label></td>
									           <td><form:input path="description" value="${tower.description}"/></td>
									       </tr>
									       <tr>
									        <td>
									         <form:label path="sector.id">Sector Type:</form:label>
									        </td>
									        <td>
									         <form:select path="sector.id" cssStyle="width: 150px;">    
									       <option value="-1">Select a type</option>
									       <c:forEach items="${sectorList}" var="sector">
									        <option value="${sector.id}">${sector.description}</option>
									       </c:forEach>
									      </form:select>
									     </td>
									       </tr>
									      
									      
									       <tr>
									         <td>&nbsp;</td>
									         <td><input type="submit" value="SAVE"/></td>
									        </tr>
									   </table> 
									  </form:form>
                                
                                
                                   <!--   <form class="form-horizontal" role="form" method="POST" action="/REALESTATE/tower/add">
                                    
                                     	<div class="form-group">
                                            <label class="col-sm-2 control-label">Code</label>
                                            <div class="col-sm-10">
                                            <input class="form-control" placeholder="001" name="code">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Name</label>
                                            <div class="col-sm-10">
                                            <input class="form-control" placeholder="Amanora" name="description">
                                            </div>
                                        </div>
                                        
                                        
                                        <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                    </form>-->
                                </div>

                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <c:if test="${!empty towerList}">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                    	<!-- <th>id</th> -->
                                    	<th>Sector</th>
                                        <th>Code</th>
                                        <th>Tower</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                <c:forEach var="sect" items="${towerList}" varStatus="status">
	        
                                    <tr class="odd gradeX">
                                    
                                   <!--   <td>Sector</td>
                                        <td>Code</td>
                                        <td>Tower</td>
                                        <td>Action</td>-->
                                      		 <td>${sect.sector.description}</td>
										<td>${sect.code}</td>
										<td>${sect.description}</td>
                    	                <td><a href="<c:url value='/editTower/${sect.id}'/>" ><i class="fa fa-pencil" aria-hidden="true" style="margin-left: 10px;"></i></a>
                    	                 <a href="<c:url value='/removeTower/${sect.id}'/>" ><i class="fa fa-trash" aria-hidden="true" style="margin-left: 10px;"></i></a></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            </c:if>
                		</div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

</div> 
  <!-- jQuery -->
    <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<c:url value="/resources/js/metisMenu.min.js"/>"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<c:url value="/resources/js/sb-admin-2.js"/>"></script>
   
    
    
    <!-- DataTables JavaScript -->
    <script src="<c:url value="/resources/js/jquery.dataTables.min.js"/>"></script>
    <script src="<c:url value="/resources/js/dataTables.bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/dataTables.responsive.js"/>"></script>
    
 <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>
</html>