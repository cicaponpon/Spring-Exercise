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
     			<label for="fname">
     				<spring:message code="label.firstName" />
     			</label> <br />
     			<form:errors path="firstName" cssClass="error-message"></form:errors>
     			<form:input cssClass="form-control" id="fname" path="firstName" cssErrorClass="error-input form-control"/>
    		</div>
    		<div class="form-group">
     			<label for="mname">
     				<spring:message code="label.middleName" />
     			</label>
     			<form:input cssClass="form-control" id="mname" path="middleName"/>
    		</div>
    		<div class="form-group">
     			<label for="lname">
     				<spring:message code="label.lastName" />
     			</label><br />
     			<form:errors path="lastName" cssClass="error-message"></form:errors>
     			<form:input cssClass="form-control" id="lname" path="lastName" cssErrorClass="error-input form-control"/>
    		</div>
    		<div class="form-group">
     			<label for="birthdate">
     				<spring:message code="label.birthDate" />
     			</label><br />
     			<form:errors path="birthDate" cssClass="error-message"></form:errors>
     			<form:input cssClass="form-control" type="date" id="birthdate" path="birthDate" cssErrorClass="error-input form-control"/>
    		</div>
    		<div class="form-group">
     			<label for="email">
     				<spring:message code="label.email" />
     			</label><br />
     			<form:errors path="email" cssClass="error-message"></form:errors>
     			<form:input cssClass="form-control" id="email" path="email" cssErrorClass="error-input form-control"/>
    		</div>
    		<div class="form-group">
     			<label for="password">
     				<spring:message code="label.password" />
     			</label><br />
     			<form:errors path="password" cssClass="error-message"></form:errors>
     			<form:password cssClass="form-control" id="password" path="password" cssErrorClass="error-input form-control"/>
    		</div>
    		<div class="form-group">
     			<label for="confirmPassword">
     				<spring:message code="label.confirmPassword" />
     			</label><br />
     			<form:errors path="confirmPassword" cssClass="error-message"></form:errors>
     			<form:password cssClass="form-control" id="confirmPassword" path="confirmPassword" cssErrorClass="error-input form-control"/>
    		</div>
    		
    		<div class="form-group">
     			<label for="role">
					<spring:message code="label.role" />
				</label>
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