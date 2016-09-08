<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<head>
	<title>LogIn Form</title>
	<link href="/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<link href="/css/style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<div class="container col-md-6 col-xs-6">
		<h2>Log In</h2>
		<hr />
	<form:form commandName="login" modelAttribute="login" action="/login" method="POST">
		
			<div class="form-group">
     			<label for="email">EMAIL</label>
     			<form:input cssClass="form-control" id="email" path="email"/>
    		</div>
    		<div class="form-group">
     			<label for="password">PASSWORD</label>
     			<form:password cssClass="form-control" id="password" path="password"/>
    		</div>
			
		<input class="btn btn-primary btn-block" type="submit" value="SUBMIT"/>
	</form:form>
	</div>
</body>

</html>