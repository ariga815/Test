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
<title>基礎学力テスト</title>
</head>
<body>
<div class="container">
<div class="float-right">
<img src="isa_logo.jpg" width="80" height="30" alt="isa" title="isa" class="img-responsive">
</div>
<div class="col-9">
<h1>基礎学力テストログイン</h1>
</div>
<div class="col-12 col-md-7">
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
<button type="submit" class="btn btn-success" name="action" value="examLogin">ログイン</button>
</form>
</div>
</div>
</body>
</html>