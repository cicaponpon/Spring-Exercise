<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<head>
	<title>ADD SKILLS</title>
	<link href="/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<link href="/css/style.css" type="text/css" rel="stylesheet"/>
	<script type="text/javascript" src="/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="/js/scripts.js"></script>
</head>
<body>
	<div class="container container col-md-6 col-xs-6">
		 <button id="addUser" type="button" class="btn btn-success">
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
</body>

</html>