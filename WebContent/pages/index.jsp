<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html{font: 12px/18px "맑은 고딕", "Malgun Gothic", "굴림", "Gulim" , Verdana, Arial, Tahoma;}

.suggest_box{
position: absolute;
left : 120px;
margin : 0px 0px 0px 0px;
width : 150 px;
background-color: #212427;
color : #fff;
}

.suggetst_box li {
margin : 0px 0px 0px 0px;
padding : 5px;
cursor: pointer;
list-style-type: none;
}

.suggest_box li:hover {
	background-color: #659CD8;
}
</style>
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