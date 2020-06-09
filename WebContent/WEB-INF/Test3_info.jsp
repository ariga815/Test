<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String screenFlg = (String)request.getAttribute("screenFlg");%>
<%String lineStr = (String)request.getAttribute("lineStr");%>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適正テスト３</title>
</head>
<body>
    <script>
    var alertmsg = function(){
  	alert("時間です！\n次のページに進みます。\n練習問題の正解はそれぞれ②と③です。");
  	var test1 = document.getElementById("test3_info");
  	var input = document.createElement('input');
  	input.setAttribute('name', 'action');
  	input.setAttribute('value', 'GoToTest3');
  	test1.appendChild(input);
  	test1.submit();
	}
	setTimeout(alertmsg, 180000);
	</script>
<div class="container">

<h1>テスト３ 説明</h1>
<h2>所要時間 ３分</h2>

<font color="red">※３分後に自動的にテストページに進みます。</font>

<h6>問</h6>
下記をよく読み、解答してください。<br>
次ページ以降には、言葉が対となってA:B=C:Dのように記載されています。<br>
□に入る最も適切な選択肢を選んでください。<br>
<br>
<h6>例</h6>
A:B=C:Dとなるように□の中に入る言葉を選択肢の５つから選んで解答してください。<br>
（１）楽しい：苦しい＝□：甘い<br>
①愛しい ②悲しい ③からい ④切ない ⑤厳しい<br>
<br>
<h6>答</h6>
関係性は反意語で「甘い」の反意語は「からい」よって正解は選択肢③です。<br>
<form id="test3_info" action="ActionServlet" method="post">
<br>
<h6>練習問題</h6>
（１）缶コーヒー：自動販売機＝切符：□<br>
①定期券 ②券売機 ③改札機 ④踏切 ⑤料金表<br>
<input type="radio" name="answer1" value="1">（１）<br>
<input type="radio" name="answer1" value="2">（２）<br>
<input type="radio" name="answer1" value="3">（３）<br>
<input type="radio" name="answer1" value="4">（４）<br>
<input type="radio" name="answer1" value="5">（５）<br>
<br>

（２）鉛筆：□＝コピー用紙：A4<br>
①消しゴム ②ボールペン ③HB ④赤ペン ⑤筆箱<br>
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
正解はそれぞれ②と③です。
</div>
<br>
<input type="hidden" name="screenFlg" value=<%=screenFlg%>>
<input type="hidden" name="lineStr" value=<%=lineStr%>>
<button type="submit" class="btn btn-success" name="action" value="GoToTest3">テスト３本題へ</button>
</form>
</div>
<br>
</body>
</html>