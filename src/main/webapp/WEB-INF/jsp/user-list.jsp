<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Users</title>
	<link href="/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<link href="/css/style.css" type="text/css" rel="stylesheet"/>
	<script type="text/javascript" src="/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="/js/scripts.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	
		<form:form modelAttribute="user" action="/addUser" method="POST">
			<button id="addUser" type="button" class="btn btn-success">
		    	 <span class="glyphicon glyphicon-user"></span> ADD USER  
		  	</button>
	  	</form:form>
	  	
		<table class="table table-striped">
		    <thead>
		      <tr>
		      	<th> ID </th>
		        <th> NAME </th>
		      </tr>
		    </thead>
		    <tbody>
		      	<c:forEach items="${user}" var="user">
		      		<tr>
		      			<td> <a href=""> ${user.id} </a> </td>
		      			<td>${user.lastName}, ${user.firstName} </td>
		      		</tr>
		      	</c:forEach>
		    </tbody>
		  </table>
	</div>
	
	 <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#tweet1">  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Tweet </button>
	
	<!-- MODAL -->
		<div class="modal fade" tabindex="-1" role="dialog" id="tweet1">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">User Information</h4>
		      </div>
		      
		      <div class="modal-body">
		           <table class="table table-striped">
				    <tbody>
				      	<tr>
				      		<td>FIRST NAME: </td>
				      		<td> </td>
				      	</tr>
				      	<tr>
				      		<td>MIDDLE NAME: </td>
				      		<td> </td>
				      	</tr>
				      	<tr>
				      		<td>LAST NAME: </td>
				      		<td> </td>
				      	</tr>
				      	<tr>
				      		<td>EMAIL: </td>
				      		<td> </td>
				      	</tr>
				      	<tr>
				      		<td>BIRTHDAY: </td>
				      		<td> </td>
				      	</tr>
				      	<tr>
				      		<td>ROLE: </td>
				      		<td> </td>
				      	</tr>
				      	
				    </tbody>
				  </table>
		      </div>
		      
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
</body>
</html>