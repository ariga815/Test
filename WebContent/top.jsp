<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>適性検査説明</title>
</head>
<body>

<p>あなたの受験者IDは、XXX です。</p>

<h1>適性検査説明</h1>

<h2>受験に際して</h2>

<ul>
<li>このテストは厳密に時間を計測しながら行います。</li>
<li>どのテストも時間がきたら、自動的に解答が送信されます。</li>
<li>次のテストに移行すると、自動的にタイマーが作動します。</li>
</ul>

<h3>テスト時間</h3>
<p>受験者情報入力 ：解答時間３分<br>
テスト１ ：解答時間５分<br>
テスト２ ：解答時間５分<br>
テスト３ ：解答時間５分<br>
テスト４ ：解答時間５分<br>
</p>

<form action="ActionServlet" method="post">
<button type="submit" name="action" value="top">解答者情報入力画面に進む</button><br>
</form>


</body>
</html>