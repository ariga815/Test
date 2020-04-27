<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String strName = request.getParameter("name");
  if(strName==null){
	  strName="";
  }

  String strGender = request.getParameter("gender");
  if(strGender==null){
	  strGender="";
  }

  String strBirth = request.getParameter("birth");
  if(strBirth==null){
	  strBirth="";
  }

  String strEdu = request.getParameter("edu");
  if(strEdu==null){
	  strEdu="";
  }

  String strStatus = request.getParameter("status");
  if(strStatus==null){
	  strStatus="";
  }

  String strSonota = request.getParameter("sonota");
  if(strSonota==null){
	  strSonota="";
  }
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>受験者情報</title>
</head>
<body>
<br>
<div class="container">
<div class="row">
<div class="col-6">
<h1>受験者情報</h1>
</div>
<div class="col-6">
<img src="isa_logo.jpg" alt="isa" title="isa" >
</div>
<div class="col-6">
<form action="ActionServlet" method="post">
氏名：<font color="red">${ meMap.get("nameMe") }</font><br>
<input type="text" name="name" class="form-control" id="exampleInputName2" placeholder="氏名を入力してください　例)ISA 太郎" value="<%= strName %>">
<br>
性別：<font color="red">${ meMap.get("genderMe") }</font><br>
<input type="radio" name="gender" value="man" <% if(strGender.equals("man")){ out.print("checked"); } %>>男<br>
<input type="radio" name="gender" value="woman" <% if(strGender.equals("woman")){ out.print("checked"); } %>>女<br>
<br>
生年月日：<font color="red">${ meMap.get("birthMe") }</font><br>
<input type="date" name="birth" value="<%= strBirth %>"><br>
<br>
最終学歴：<font color="red">${ meMap.get("eduMe") }</font>
<input type="text" name="edu" class="form-control" id="exampleInputName2" placeholder="最終学歴を入力してください　例)〇〇大学、〇〇専門学校" value="<%= strEdu %>" >
<br>
現在の状態：<font color="red">${ meMap.get("statusMe") }</font><br>
<input type="radio" name="status" value="student" <% if(strStatus.equals("student")){ out.print("checked"); } %>>在学中<br>
<input type="radio" name="status" value="second" <% if(strStatus.equals("second")){ out.print("checked"); } %>>第二新卒<br>
<input type="radio" name="status" value="worker"<% if(strStatus.equals("worker")){ out.print("checked"); } %>>会社員<br>
<input type="radio" name="status" value="sonota" <% if(strStatus.equals("sonota")){ out.print("checked"); } %>>その他：<input type="text" name="sonota" value="<%= strSonota %>"><br>
<br>
<button type="submit" class="btn btn-success" name="action" value="form">送信</button>
</form>
</div>
</div>
</div>
<br>
</body>
</html>