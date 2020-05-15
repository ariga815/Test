<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String StrLoginId = request.getParameter("loginId");
  if(StrLoginId==null){
	  StrLoginId="";
  }
  String StrNowPass = request.getParameter("nowPass");
  if(StrNowPass==null){
	  StrNowPass="";
  }
  String StrNewPass = request.getParameter("newPass");
  if(StrNewPass==null){
	  StrNewPass="";
  }
  String StrNewPass2 = request.getParameter("newPass2");
  if(StrNewPass2==null){
	  StrNewPass2="";
  }
  String StrAuth = request.getParameter("auth");
  if(StrAuth==null){
	  StrAuth="";
  }
%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<% List<Map<String,Object>> examineeInfoList =  (List<Map<String,Object>>)request.getAttribute("ExamineeInfoList"); %>
<% String changeflg = (String)request.getAttribute("changeflg"); %>
<% String err = (String)request.getAttribute("err"); %>
<html>
<head>
<jsp:include page="common2.jsp" flush="true" />
<title>ログイン情報登録・変更</title>
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
<div class="col-9">
<h1>ログイン情報登録・変更</h1>
</div>
<div class="col-12">
<form action="ActionServlet" method="post">
<% if (err!=null && !err.equals("")) {%>
    <font color="red" size="2"><%=err%></font>
    <br>
<%}%>
<button type="submit" class="btn btn-success" name="action" value="newcreate">新規作成</button>
<button type="submit" class="btn btn-success" name="action" value="change">変更</button>
<button type="submit" class="btn btn-success" name="action" value="delete">削除</button>
<button type="submit" class="btn btn-success" name="action" value="loginList">ログイン情報一覧</button>
<button type="submit" class="btn btn-success" name="action" value="examineeInfo">戻る</button><br>
    <br>
    <% if (changeflg!=null && (changeflg.equals("1") || changeflg.equals("0") || changeflg.equals("2"))) {%>

    <h6>ログインID：<font color="red">${ meMap.get("loginIdMe") }</font></h6>
    <input type="text" name="loginId" class="form-control" id="exampleInputName2" value="<%= StrLoginId %>" maxlength='45'>

	<% if (changeflg.equals("1") || changeflg.equals("2")) {%>
	<br>
    <h6>現在のパスワード：<font color="red">${ meMap.get("nowPassMe") }</font></h6>
    <input type="password" name="nowPass" class="form-control" id="exampleInputName2" value="<%= StrNowPass %>" maxlength='45'>
    <%} %>
    <% if (changeflg.equals("1") || changeflg.equals("0")) {%>
	<br>
    <h6>新しいパスワード：<font color="red">${ meMap.get("newPassMe") }</font></h6>
    <input type="password" name="newPass" class="form-control" id="exampleInputName2" value="<%= StrNewPass %>" maxlength='45'>
	<br>
    <h6>新しいパスワード（確認用）：<font color="red">${ meMap.get("newPass2Me") }</font></h6>
    <input type="password" name="newPass2" class="form-control" id="exampleInputName2" value="<%= StrNewPass2 %>" maxlength='45'>
	<br>
    <h6>アクセス権限：<font color="red">${ meMap.get("authMe") }</font></h6>
    <input type="radio" name=auth value="1" <% if(StrAuth.equals("1")){ out.print("checked"); } %>>管理者<br>
    <input type="radio" name="auth" value="0" <% if(StrAuth.equals("0")){ out.print("checked"); } %>>受験者<br>
    <%} %>

<br>
<button type="submit" class="btn btn-success" name="action" value="registration">登録</button>

    <%} %>
</form>
</div>
</div>
</body>
</html>