<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0 shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="my-bootstrap.css" rel="stylesheet">
</head>
<script type="text/javascript">
$(function(){
	 history.pushState(null, null, null); //ブラウザバック無効化
	 //ブラウザバックボタン押下時
	 $(window).on("popstate", function (event) {
	   history.pushState(null, null, null);
	   window.alert('不正防止のため、前画面に戻ることはできません。');
	 });
	});

function entryChange1(isChecked){
	if(isChecked == true) {
		document.getElementById('firstNotice').style.display = "";
	}else {
		document.getElementById('firstNotice').style.display = "none";
	}
}
window.onload = entryChange1;
</script>
</html>