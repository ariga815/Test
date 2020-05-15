<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<% List<Map<String,Object>> loginInfoList =  (List<Map<String,Object>>)request.getAttribute("loginInfoList"); %>
<html>
<head>
<jsp:include page="common2.jsp" flush="true" />
<title>受験者一覧</title>
<style>
  .table1 {
    border-collapse: collapse;
    	width: 1000px;
  }
  .table1 th, .table1 td {
    border: 1px solid gray;
  }
</style>
</head>
<body>
<div class="container">
<h1>受験者一覧</h1>
<form action="ActionServlet" method="post">
<button type="submit" class="btn btn-success" name="action" value="loginInfo">戻る</button><br>
<br>
    <table class="table1">
        <tr>
            <th>ログインID</th>
            <th>アクセス権限</th>
        </tr>
        <% for (Map<String,Object> loginInfo: loginInfoList) {%>
        <tr>
        	<td><label for="info"><%=loginInfo.get("loginId")%></label></td>
            <td><label for="info"><%=loginInfo.get("loginFlg")%></label></td>
        </tr>
        <%} %>
    </table>
<br>
</form>
</div>
</body>
</html>