<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適正テスト２</title>
</head>
<body>
<div class="container">

<h1>テスト２ 説明</h1>
<h2>所要時間 ３分</h2>

<font color="red">※３分後に自動的にテストページに進みます。</font>

<h6>問</h6>
下記をよく読み、解答してください。<br>
次ページ以降には、四則演算の計算問題が並んでいます。<br>
正しい計算結果の選択肢を選んでください。<br>
<br>
<h6>例</h6>
（１）以下の計算問題を解いて正しい選択肢を解答してください。<br>
6+4-8×1＝<br>
①16 ②-6 ③2 ④14 ⑤17<br>
<br>
<h6>答</h6>
計算結果は「２」であり、よって正解は選択肢③です。<br>
<form action="ActionServlet" method="post">
<br>
<h6>練習問題</h6>
（１）8+2×5+8=<br>
①32 ②37 ③26 ④24 ⑤27<br>
<input type="radio" name="answer1" value="1">（１）<br>
<input type="radio" name="answer1" value="2">（２）<br>
<input type="radio" name="answer1" value="3">（３）<br>
<input type="radio" name="answer1" value="4">（４）<br>
<input type="radio" name="answer1" value="5">（５）<br>
<br>

（２）3+4÷2+2=<br>
①19 ②18 ③7 ④21 ⑤-3<br>
<input type="radio" name="answer2" value="1">（１）<br>
<input type="radio" name="answer2" value="2">（２）<br>
<input type="radio" name="answer2" value="3">（３）<br>
<input type="radio" name="answer2" value="4">（４）<br>
<input type="radio" name="answer2" value="5">（５）<br>
<br>
<table>
<tr>
<td>
<label><input type="checkbox" name="answer" value="hoge1" onclick="entryChange1(this.checked);" />練習問題正解を表示</label>
</td>
</tr>
</table>

<!-- 表示非表示切り替え -->
<div id="firstNotice">
正解はいずれも③です。
</div>
<br>
<button type="submit" class="btn btn-success" name="action" value="GoToTest2">テスト２本題へ</button>
</form>
</div>
<br>
</body>
</html>