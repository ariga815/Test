<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>適正テスト３</title>
</head>
<body>
<h1>テスト３ 説明</h1>
<h2>解答時間 ３分</h2>

<font color="red">※３分後に自動的にテストページに進みます。</font>

<p>【問】<br>
下記をよく読み、解答してください。<br>
次ページ以降には、言葉が対となってA:B=C:Dのように記載されています。<br>
□に入る最も適切な選択肢を選んでください。<br></p>


<p>【例】<br>
A:B=C:Dとなるように□の中に入る言葉を選択肢の５つから選んで解答してください。<br>
（１）楽しい：苦しい＝□：甘い<br>
①愛しい ②悲しい ③からい ④切ない ⑤厳しい<br>
<br>
正解：<br>
関係性は反意語で「甘い」の反意語は「からい」よって正解は選択肢③です。<br></p>
<form action="ActionServlet" method="post">
<p>【練習問題】
（１）缶コーヒー：自動販売機＝切符：□<br>
①定期券 ②券売機 ③改札機 ④踏切 ⑤料金表<br>
<input type="radio" name="answer1" value="1">（１）<br>
<input type="radio" name="answer1" value="2">（２）<br>
<input type="radio" name="answer1" value="3">（３）<br>
<input type="radio" name="answer1" value="4">（４）<br>
<input type="radio" name="answer1" value="5">（５）<br>
</p>

（２）鉛筆：□＝コピー用紙：A4<br>
①消しゴム ②ボールペン ③HB ④赤ペン ⑤筆箱<br>
<input type="radio" name="answer2" value="1">（１）<br>
<input type="radio" name="answer2" value="2">（２）<br>
<input type="radio" name="answer2" value="3">（３）<br>
<input type="radio" name="answer2" value="4">（４）<br>
<input type="radio" name="answer2" value="5">（５）<br>
<br>
<button type="submit" name="action" value="test3_check">解答を確認する</button><br>
<%
if(request.getAttribute("flg").equals("1")){
%>
<p>正解はそれぞれ②と③です。<br></p>
<button type="submit" name="action" value="GoToTest3">次のテストへ</button>
<% } %>
</form>

</body>
</html>