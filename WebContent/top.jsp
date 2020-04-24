<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適性検査説明</title>
</head>
<body>
<div class="container">
<div class="col-7 ml-7">
<p>あなたの受験者IDは、XXX です。</p>

<h1>適性検査説明</h1>

<h4><font color="#6495ED">受験に際して</font></h4>

<ul>
<li>このテストは厳密に時間を計測しながら行います。</li>
<li>どのテストも時間がきたら、自動的に回答が送信されます。</li>
<li>次のテストに移行すると、自動的にタイマーが作動します。</li>
</ul>

<h4><font color="#6495ED">テスト時間</font></h4>
<table class="table table-bordered">
<thead>
<tr>
<th>検査項目</th>
<th>回答時間</th>
</tr>
</thead>
<tbody>
<tr>
<td>回答者情報入力</td>
<td>３分</td>
</tr>
<tr>
<td>テスト１（文章把握）</td>
<td>５分</td>
</tr>
<tr>
<td>テスト２（四則演算）</td>
<td>５分</td>
</tr>
<tr>
<td>テスト３（言語推論）</td>
<td>５分</td>
</tr>
<tr>
<td>テスト４（数列）</td>
<td>５分</td>
</tr>
</tbody>
</table>
<form action="ActionServlet" method="post">
<button type="submit" class="btn btn-success" name="action" value="top">回答者情報入力画面に進む</button><br>
</form>
</div>
</div>
</body>
</html>