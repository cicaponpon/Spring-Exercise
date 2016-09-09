
$(document).ready(function(){
	
}).on('click','#add',function(){
	$('#skillRows').append(
			"<tr>" +
			"<td><input class='form-control' name='skill'/></td>" +
			"<td><input class='form-control' name='rating'/></td>" +
			"<td><input class='btn btn-primary' type='submit' value='Save'></td>" +
			"</tr>")
});

$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
})