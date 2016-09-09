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

	<div class="container col-md-6 col-xs-6">
			<a id="addUser" type="button" class="btn btn-success" href="/user">
		    	 <span class="glyphicon glyphicon-user"></span> ADD USER  
		  	</a>
	  	
		<table class="table table-striped">
		    <thead>
		      <tr>
		      	<th> ID </th>
		        <th> NAME </th>
		        <th> SKILLS </th>
		      </tr>
		    </thead>
		    <tbody>
		      	<c:forEach items="${user}" var="user">
		      		<tr>
		      			<td data-toggle="modal" data-target="#${user.id}"> ${user.id} </td>
		      			<td> ${user.id} </td>
		      			<td>${user.lastName}, ${user.firstName} </td>
		      			<td><button data-toggle="modal" data-target="#skill" class="btn btn-success"><span class="glyphicon glyphicon-list"></span></button></td>
		      		</tr>
		      	</c:forEach>
		    </tbody>
		  </table>
	</div>
			<c:forEach items="${user}" var="user">
				    <!-- MODAL -->
					<div class="modal fade" tabindex="-1" role="dialog" id="${user.id}">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title">User Information</h4>
					      </div>
					      
					      <div class="modal-body">
					           <table class="table borderless">
							    <tbody>
							      	<tr>
							      		<td><b>FIRST NAME: </b></td>
							      		<td>${user.firstName}</td>
							      	</tr>
							      	<tr>
							      		<td><b>MIDDLE NAME: </b></td>
							      		<td>${user.middleName}</td>
							      	</tr>
							      	<tr>
							      		<td><b>LAST NAME: </b></td>
							      		<td>${user.lastName}</td>
							      	</tr>
							      	<tr>
							      		<td><b>EMAIL: </b></td>
							      		<td>${user.email}</td>
							      	</tr>
							      	<tr>
							      		<td><b>BIRTHDAY: </b></td>
							      		<td>${user.birthDate}</td>
							      	</tr>
							      	<tr>
							      		<td><b>ROLE: </b></td>
							      		<td>${user.role}</td>
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
			</c:forEach>
				    <!-- MODAL -->
					<div class="modal fade" tabindex="-1" role="dialog" id="skill">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title">User Skills</h4>
					      </div>
					      
					      <div class="modal-body">
								 <button id="addSkill" type="button" class="btn btn-success">
							    	 <span class="glyphicon glyphicon-plus"></span> ADD SKILL  
							  	</button>
							  	<hr />
							  	<table class="table table-striped">
								    <thead>
								      <tr>
								        <th>Skill</th>
								        <th>Rating</th>
								        <th></th>
								      </tr>
								    </thead>
								    <tbody id="skillRows">
								      
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