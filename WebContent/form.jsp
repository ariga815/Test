<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>回答者情報</title>
</head>
<body>
<div class="col-5 ml-3">

<h1>回答者情報</h1>

<form action="ActionServlet" method="post">
氏名：<br>
<input type="text" name="name" class="form-control" id="exampleInputName2" placeholder="ISA 太郎"><br>
<font color="red">${ meMap.get("nameMe") }</font>
性別：<br>
<input type="radio" name="gender" value="man">男<br>
<input type="radio" name="gender" value="woman">女<br>
<font color="red">${ meMap.get("genderMe") }</font><br>
生年月日：<br>
<input type="date" name="birth"><br>
<font color="red">${ meMap.get("birthMe") }</font><br>
最終学歴：<input type="text" name="edu" class="form-control" id="exampleInputName2" placeholder="〇〇大学、〇〇専門学校"><br>
<font color="red">${ meMap.get("eduMe") }</font><br>
現在の状態：<br>
<input type="radio" name="status" value="student">在学中<br>
<input type="radio" name="status" value="second">第二新卒<br>
<input type="radio" name="status" value="worker">会社員<br>
<input type="radio" name="status" value="sonota">その他：<input type="text" name="sonota"><br>
<font color="red">${ meMap.get("statusMe") }</font><br><br>
<button type="submit" name="action" value="form">送信</button>
</form>
</div>
<br>
</body>
</html>