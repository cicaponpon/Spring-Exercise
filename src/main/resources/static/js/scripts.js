
$(document).ready(function(){
	
}).on('click','#addSkill',function(){
	$('#skillRows').append(
			"<tr>" +
			"<form:form  commandName='skill' modelAttribute='skill' action='/skill' method='POST'>" +
			"<form:error path='skill' cssClass='error-message'>" +
			"<td><input class='form-control' name='skill' cssErrorClass='error-input form-control'/></td>" +
			"<form:error path='rating' cssClass='error-message'>" +
			"<td><input class='form-control' name='rating' cssErrorClass='error-input form-control'/></td>" +
			"<td><input class='btn btn-primary' type='submit' value='Save'></td>" +
			"</form:form>" +
			"</tr>")
});