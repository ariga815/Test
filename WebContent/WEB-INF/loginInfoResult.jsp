<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String changeflg = (String)request.getAttribute("changeflg"); %>
<html>
<head>
<jsp:include page="common2.jsp" flush="true" />
<title>ログイン情報登録・変更</title>
</head>
<body>
<div class="container">
<div class="col-9">
<h1>ログイン情報登録・変更結果</h1>
</div>
<div class="col-12">
<% if (changeflg.equals("0")) {%>
ログイン情報の新規登録が完了しました
<%} else if (changeflg.equals("1")) {%>
ログイン情報の変更が完了しました
<%} else if (changeflg.equals("2")) {%>
ログイン情報の削除が完了しました
<%} %>
<form action="ActionServlet" method="post">
<button type="submit" class="btn btn-success" name="action" value="examineeInfo">戻る</button><br>
</form>
</div>
</div>
</body>
</html>