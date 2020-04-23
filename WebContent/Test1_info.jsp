<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適正テスト１</title>
</head>
<body>
<div class="col-10 ml-3">

<h1>テスト１ 説明</h1>
<h2>解答時間 ３分</h2>

<font color="red">※３分後に自動的にテストページに進みます。</font>

<p>【問】<br>
下記をよく読み、解答してください。<br>
次ページ以降には、一文を分割した言葉が５つ並んでいます。<br>
正しく並び替えた上で、指定の順番に該当する選択肢を選んでください。<br></p>


<p>【例】<br>
（１）並び替えたときに４番目になる選択肢を解答してください。<br>
①把握できる ②経営者が社内外の ③かつ的確に ④ような仕組みが必要だ ⑤情報を迅速<br>
<br>
正解：<br>
経営者が社内外の／情報を迅速／かつ的確に／把握できる／ような仕組みが必要だ<br>
４番目は「把握できる」であり、よって正解は選択肢①です。<br></p>
<form action="ActionServlet" method="post">
<p>【練習問題】
（１）並び替えたときに３番目になる選択肢を解答してください。<br>
①重視してアルバイトを ②時給の高さだけでなく ③選ぶ人が ④増えている ⑤働きやすさを<br>
<input type="radio" name="answer1" value="1">（１）<br>
<input type="radio" name="answer1" value="2">（２）<br>
<input type="radio" name="answer1" value="3">（３）<br>
<input type="radio" name="answer1" value="4">（４）<br>
<input type="radio" name="answer1" value="5">（５）<br>
</p>

（２）並び替えたときに５番目になる選択肢を解答してください。<br>
①だけでなく ②好感がもてる ③身だしなみがよい ④礼儀正しいので ⑤この店の店員は<br>
<input type="radio" name="answer2" value="1">（１）<br>
<input type="radio" name="answer2" value="2">（２）<br>
<input type="radio" name="answer2" value="3">（３）<br>
<input type="radio" name="answer2" value="4">（４）<br>
<input type="radio" name="answer2" value="5">（５）<br>
<br>
<button type="submit" name="action" value="test1_check">解答を確認する</button><br>
<%
if(request.getAttribute("flg").equals("1")){
%>
<p>正解はそれぞれ①と②です。<br></p>
<button type="submit" name="action" value="GoToTest1">次のテストへ</button>
<% } %>
</form>
</div>
</body>
</html>