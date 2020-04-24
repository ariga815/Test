<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適正テスト４</title>
</head>
<body>
<div class="container">

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
<table>
<tr>
<td>
<label><input type="radio" name="entryPlan" value="hoge1" onclick="entryChange1();" checked="checked" />正解を非表示</label>
<label><input type="radio" name="entryPlan" value="hoge2" onclick="entryChange1();" />正解を表示</label>
</td>
</tr>
</table>

<!-- 表示非表示切り替え -->
<div id="firstNotice">
正解はそれぞれ⑤と①です。
</div>
<br>
<button type="submit" class="btn btn-success" name="action" value="GoToTest4">テスト４本題へ</button>
</form>
</div>
<br>
</body>
</html>