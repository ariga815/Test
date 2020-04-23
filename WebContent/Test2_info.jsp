<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>適正テスト２</title>
</head>
<body>
<h1>テスト２ 説明</h1>
<h2>解答時間 ３分</h2>

<font color="red">※３分後に自動的にテストページに進みます。</font>

<p>【問】<br>
下記をよく読み、解答してください。<br>
次ページ以降には、四則演算の計算問題が並んでいます。<br>
正しい計算結果の選択肢を選んでください。<br></p>


<p>【例】<br>
（１）以下の計算問題を解いて正しい選択肢を解答してください。<br>
6+4-8×1＝<br>
①16 ②-6 ③2 ④14 ⑤17<br>
<br>
正解：<br>
計算結果は「２」であり、よって正解は選択肢③です。<br></p>
<form action="ActionServlet" method="post">
<p>【練習問題】
（１）8+2×5+8=<br>
①32 ②37 ③26 ④24 ⑤27<br>
<input type="radio" name="answer1" value="1">（１）<br>
<input type="radio" name="answer1" value="2">（２）<br>
<input type="radio" name="answer1" value="3">（３）<br>
<input type="radio" name="answer1" value="4">（４）<br>
<input type="radio" name="answer1" value="5">（５）<br>
</p>

（２）3+4÷2+2=<br>
①19 ②18 ③7 ④21 ⑤-3<br>
<input type="radio" name="answer2" value="1">（１）<br>
<input type="radio" name="answer2" value="2">（２）<br>
<input type="radio" name="answer2" value="3">（３）<br>
<input type="radio" name="answer2" value="4">（４）<br>
<input type="radio" name="answer2" value="5">（５）<br>
<br>
<button type="submit" name="action" value="test2_check">解答を確認する</button><br>
<%
if(request.getAttribute("flg").equals("1")){
%>
<p>正解はいずれも③です。<br></p>
<button type="submit" name="action" value="GoToTest2">次のテストへ</button>
<% } %>
</form>

</body>
</html>