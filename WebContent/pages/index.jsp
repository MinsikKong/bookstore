<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/css">

</script>
<script type="text/javascript" src="/book/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
function fill(name){
	
	$('#country').val(name);
	$('#suggest_box').fadeOut();
}

$(function(){
	$('#country').keyup(function(){
		$.post('/book/CountrySuggestServlet', {query: $('#country').val()},
				function(data){
			$('#suggest_box').html(data).show();
		}
	);
});
	/* $('#loading').ajaxStart(function() {$(this).show();});
	$('#loading').ajaxComplete(function() {$(this).hide();}); */
});
</script>

</head>
<body>
<div>
Type your country : <input type="text" id="country" size="20" />
<div class="suggest_box" id="suggest_box">
</div>
<p style="color:silver">
</p>

</div>
</body>
</html>