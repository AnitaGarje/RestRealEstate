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
	<title>Project</title>
	
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
    
    
           
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/resources/static/js/app.js' />"></script>
      <script src="<c:url value='/resources/static/service/user_service.js' />"></script>
      <script src="<c:url value='/resources/static/controller/user_controller.js' />"></script>
</head>
<body ng-app="myApp" class="ng-cloak">
<div id="wrapper">
	<jsp:include page="Navbar.jsp"/>
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Projects</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row"  ng-controller="ProjectController as ctrl">
                <div  class="col-lg-12"><!-- Controller added -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Projects
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
				                      <input type="hidden" ng-model="ctrl.project.id" />
				                      <div class="row">
				                          <div class="form-group col-md-12">
				                              <label class="col-md-2 control-lable" for="code">Code</label>
				                              <div class="col-md-7">
				                                  <input type="text" ng-model="ctrl.project.code" id="code" class="code form-control input-sm" placeholder="Enter project code" required ng-minlength="3"/>
				                                  <div class="has-error" ng-show="myForm.$dirty">
				                                      <span ng-show="myForm.code.$error.required">This is a required field</span>
				                                      <span ng-show="myForm.code.$error.minlength">Minimum length required is 3</span>
				                                      <span ng-show="myForm.code.$invalid">This field is invalid </span>
				                                  </div>
				                              </div>
				                          </div>
				                      </div>
				                         
				                       
				                      <div class="row">
				                          <div class="form-group col-md-12">
				                              <label class="col-md-2 control-lable" for="description">Project Name</label>
				                              <div class="col-md-7">
				                                  <input type="text" ng-model="ctrl.project.description" id="description" class="form-control input-sm" placeholder="Enter description. [This field is validation free]"/>
				                              </div>
				                          </div>
				                      </div>
			
				 
				                      <div class="row">
				                          <div class="form-actions floatRight">
				                              <input type="submit"  value="{{!ctrl.project.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
				                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
				                          </div>
				                      </div>
				                  </form>
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
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                    	<!-- <th>id</th> -->
                                        <th>Code</th>
                                        <th>Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tr ng-repeat="p in ctrl.projects">
								 <td><span ng-bind="p.code"></span></td>
                              <td><span ng-bind="p.description"></span></td>
                              <td>
                              <button type="button" ng-click="ctrl.edit(p.id)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(p.id)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          	</tr>
                      		</tbody>
                            </table>
                            <!-- /.table-responsive -->
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