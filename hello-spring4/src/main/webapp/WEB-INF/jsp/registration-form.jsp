<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<head>
	<title>Registration Form</title>
	<link href="/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<link href="/css/style.css" type="text/css" rel="stylesheet"/>
	
</head>
<body>
	<div class="container col-md-6 col-xs-6">
		<h2>Registration Form</h2>
		<hr />
		<form:form commandName="user" modelAttribute="user" action="/user" method="POST">
			<div class="form-group">
     			<label for="fname">FIRST NAME</label>
     			<form:input cssClass="form-control" id="fname" path="firstName"/>
    		</div>
    		<div class="form-group">
     			<label for="mname">MIDDLE NAME</label>
     			<form:input cssClass="form-control" id="mname" path="middleName"/>
    		</div>
    		<div class="form-group">
     			<label for="lname">LAST NAME</label>
     			<form:input cssClass="form-control" id="lname" path="lastName"/>
    		</div>
    		<div class="form-group">
     			<label for="birthdate">BIRTHDATE</label>
     			<form:input cssClass="form-control" type="date" id="birthdate" path="birthDate"/>
    		</div>
    		<div class="form-group">
     			<label for="email">EMAIL</label>
     			<form:input cssClass="form-control" id="email" path="email"/>
    		</div>
    		<div class="form-group">
     			<label for="password">PASSWORD</label>
     			<form:password cssClass="form-control" id="password" path="password"/>
    		</div>
    		
    		<div class="form-group">
     			<label for="role">ROLE</label>
	     			<form:select cssClass="form-control" path="role" id="role">
	     				<form:option value="admin" label="Admin" />
	     				<form:option value="user" label="User" />
	     			</form:select> 
	    	</div>
    		
			<input class="btn btn-primary btn-block" type="submit" value="SUBMIT"/>
		</form:form>
	</div>
</body>

</html>