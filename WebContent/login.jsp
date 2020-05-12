<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String userId = request.getParameter("userId");
  if(userId==null){
	  userId="";
  }
  String password = request.getParameter("password");
  if(password==null){
	  password="";
  }
%>
<!DOCTYPE html>
<% String err = (String)request.getAttribute("err"); %>
<html lang="ja">
<style>
.table1 th {
  text-align: right;
}
</style>
<head>
<jsp:include page="common2.jsp" flush="true" />
<title>ログイン</title>
</head>
<body>
<div class="container">
<h1>ログイン</h1>
<form action="ActionServlet" method="post">
<table class="table1">
<tr>
<th align="right">ユーザID：</th>
<td>
  <input type="text" class="form-control" name="userId" value="<%= userId %>" maxlength="256" >
</td>
</tr><tr>
<th align="right">パスワード：</th>
<td>
  <input type="password" class="form-control" name="password" value="<%= password %>" maxlength="256" >
</td>
</tr>
<tr>
</table>
<% if (err!=null && !err.equals("")) {%>
    <font color="red" size="2"><%=err%></font>
<%}%>
<br>
<button type="submit" class="btn btn-success" name="action" value="login">ログイン</button>
</form>
</div>
</body>
</html>