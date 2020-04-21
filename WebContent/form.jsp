<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>解答者情報</title>
</head>
<body>

<h1>解答者情報</h1>
<br>
氏名：<br>
<input type="text" name="name"><br>
<br>
性別：<br>
<input type="radio" name="sex" value="man">男<br>
<input type="radio" name="sex" value="woman">女<br>
<br>
生年月日：<br>
<input type="text" name="birth"><br><br>
<br>
最終学歴：<br>
（例）〇〇大学、〇〇専門学校<br>
<input type="text" name="scool"><br>
<br>
現在の状態：<br>
<input type="radio" name="status" value="student">在学中<br>
<input type="radio" name="status" value="second">第二新卒<br>
<input type="radio" name="status" value="worker">会社員<br>
<input type="radio" name="status" value="sonota">その他:<input type="text" name="sonota"><br>
<br>
<button type="submit" name="action" value="form">送信</button>

</body>
</html>