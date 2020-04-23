<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>適正テスト４</title>
</head>
<body>
<h1>テスト４ 説明</h1>
<h2>解答時間 ３分</h2>

<font color="red">※３分後に自動的にテストページに進みます。</font>

<p>【問】<br>
下記をよく読み、解答してください。<br>
次ページ以降には、数字がある規則で並んでいます。<br>
□に入る最も適切な選択肢を選んでください。<br></p>


<p>【例】<br>
（１）45, 48, 51, □, 57<br>
①56 ②52 ③54 ④55 ⑤53<br>
<br>
正解：<br>
左から順に3ずつ増加しています。よって正解は「54」、選択肢③です。<br></p>
<form action="ActionServlet" method="post">
<p>【練習問題】
（１）□, 89, 90, 91, 92<br>
①89 ②85 ③91 ④87 ⑤88<br>
<input type="radio" name="answer1" value="1">（１）<br>
<input type="radio" name="answer1" value="2">（２）<br>
<input type="radio" name="answer1" value="3">（３）<br>
<input type="radio" name="answer1" value="4">（４）<br>
<input type="radio" name="answer1" value="5">（５）<br>
</p>

（２）34, 33, □, 31, 30<br>
①32 ②33 ③30 ④31 ⑤36<br>
<input type="radio" name="answer2" value="1">（１）<br>
<input type="radio" name="answer2" value="2">（２）<br>
<input type="radio" name="answer2" value="3">（３）<br>
<input type="radio" name="answer2" value="4">（４）<br>
<input type="radio" name="answer2" value="5">（５）<br>
<br>
<button type="submit" name="action" value="test4_check">解答を確認する</button><br>
<%
if(request.getAttribute("flg").equals("1")){
%>
<p>正解はそれぞれ⑤と①です。<br></p>
<button type="submit" name="action" value="GoToTest4">次のテストへ</button>
<% } %>
</form>

</body>
</html>