<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適性検査説明</title>
</head>
<body>
<br>
<div class="container">
<div class="float-right">
<img src="isa_logo.jpg" width="80" height="30" alt="isa" title="isa" class="img-responsive">
</div>
<div class="col-9">
<h1>適性検査について</h1>
</div>

<br>
<h4 class="text-success">受験に際して</h4>

<ul>
<li>このテストは厳密に時間を計測しながら行います。</li>
<li>テスト実施中に所要時間を過ぎた場合は、その時点の回答内容が自動的に送信されます。</li>
<li>次のテストに移行すると、自動的にタイマーが作動します。</li>
<li>不正防止のため、ブラウザバック(戻るボタン)の使用を禁止しています。</li>
</ul><br>

<div class="col-12 col-md-7">
<table class="table table-bordered">
<thead>
<tr>
<th>検査項目</th>
<th>所要時間</th>
</tr>
</thead>
<tbody>
<tr>
<td>受験者情報入力</td>
<td>時間制限なし</td>
</tr>
<tr>
<td>テスト１（文章把握）</td>
<td>説明：３分　試験：５分</td>
</tr>
<tr>
<td>テスト２（四則演算）</td>
<td>説明：３分　試験：５分</td>
</tr>
<tr>
<td>テスト３（言語推論）</td>
<td>説明：３分　試験：５分</td>
</tr>
<tr>
<td>テスト４（数列）</td>
<td>説明：３分　試験：５分</td>
</tr>
</tbody>
</table>
</div>
<form action="ActionServlet" method="post">
<button type="submit" class="btn btn-success" name="action" value="top">受験者情報入力に進む</button><br>
</form>
</div>
<br>
</body>
</html>