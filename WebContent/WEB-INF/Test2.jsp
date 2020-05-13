<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適正テスト２</title>
</head>
<body>
    <script>
      alert('このテストは時間管理されています。\n制限時間は５分です。\n「OK」をクリックするとスタートします。');
    var alertmsg = function(){
  	alert("時間です！\n次のページに進みます。");
  	var test1 = document.getElementById("test2");
  	var input = document.createElement('input');
  	input.setAttribute('name', 'action');
  	input.setAttribute('value', 'Test2_submit');
  	test1.appendChild(input);
  	test1.submit();
	}
	setTimeout(alertmsg, 300000);
	</script>
<div class="container">

<h1>テスト２ ＜所要時間５分＞</h1>
※ボタンを押してテストを開始してください<br>
<input type=button class="btn btn-success" name="answer" value="問題を表示" onclick="display()" />

<div id="firstNotice">
<form id="test2" action="ActionServlet" method="post">
<br><p><b>(1) 6✕4＋6－6＝</b><br>
（１）28（２）22（３）24 （４）36（５）20<br>
<input type="radio" name="answer1" value="（１）">（１）<br>
<input type="radio" name="answer1" value="（２）">（２）<br>
<input type="radio" name="answer1" value="（３）">（３）<br>
<input type="radio" name="answer1" value="（４）">（４）<br>
<input type="radio" name="answer1" value="（５）">（５）<br>
</p>

<p><b>(2) 7＋1✕1✕3＝</b><br>
（１）15（２）1（３） 2（４）19（５）10<br>
<input type="radio" name="answer2" value="（１）">（１）<br>
<input type="radio" name="answer2" value="（２）">（２）<br>
<input type="radio" name="answer2" value="（３）">（３）<br>
<input type="radio" name="answer2" value="（４）">（４）<br>
<input type="radio" name="answer2" value="（５）">（５）<br>
</p>

<p><b>(3) 6÷6✕1－9＝</b><br>
（１）－14（２）－16（３）－8（４）－10（５）－18<br>
<input type="radio" name="answer3" value="（１）">（１）<br>
<input type="radio" name="answer3" value="（２）">（２）<br>
<input type="radio" name="answer3" value="（３）">（３）<br>
<input type="radio" name="answer3" value="（４）">（４）<br>
<input type="radio" name="answer3" value="（５）">（５）<br>
</p>

<p><b>(4) 5✕4✕5✕3＝</b><br>
（１）302（２）292（３）300（４）296（５）303<br>
<input type="radio" name="answer4" value="（１）">（１）<br>
<input type="radio" name="answer4" value="（２）">（２）<br>
<input type="radio" name="answer4" value="（３）">（３）<br>
<input type="radio" name="answer4" value="（４）">（４）<br>
<input type="radio" name="answer4" value="（５）">（５）<br>
</p>

<p><b>(5) 9＋6✕5－5＝</b><br>
（１）34（２）42（３）33（４）25（５）44<br>
<input type="radio" name="answer5" value="（１）">（１）<br>
<input type="radio" name="answer5" value="（２）">（２）<br>
<input type="radio" name="answer5" value="（３）">（３）<br>
<input type="radio" name="answer5" value="（４）">（４）<br>
<input type="radio" name="answer5" value="（５）">（５）<br>
</p>

<p><b>(6) 4＋7÷1－4＝</b><br>
（１）3 （２）5（３）ー3（４）4（５）7<br>
<input type="radio" name="answer6" value="（１）">（１）<br>
<input type="radio" name="answer6" value="（２）">（２）<br>
<input type="radio" name="answer6" value="（３）">（３）<br>
<input type="radio" name="answer6" value="（４）">（４）<br>
<input type="radio" name="answer6" value="（５）">（５）<br>
</p>

<p><b>(7) 1－7－7＋8＝</b><br>
（１）10（２）－5（３）0（４）－9（５）－3<br>
<input type="radio" name="answer7" value="（１）">（１）<br>
<input type="radio" name="answer7" value="（２）">（２）<br>
<input type="radio" name="answer7" value="（３）">（３）<br>
<input type="radio" name="answer7" value="（４）">（４）<br>
<input type="radio" name="answer7" value="（５）">（５）<br>
</p>

<p><b>(8) 8＋3＋3÷3＝</b><br>
（１）12（２）18（３）9（４）17（５）7<br>
<input type="radio" name="answer8" value="（１）">（１）<br>
<input type="radio" name="answer8" value="（２）">（２）<br>
<input type="radio" name="answer8" value="（３）">（３）<br>
<input type="radio" name="answer8" value="（４）">（４）<br>
<input type="radio" name="answer8" value="（５）">（５）<br>
</p>

<p><b>(9) 4－6－4✕6＝</b><br>
（１）–18（２）－34（３）－16（４）－26（５）－31<br>
<input type="radio" name="answer9" value="（１）">（１）<br>
<input type="radio" name="answer9" value="（２）">（２）<br>
<input type="radio" name="answer9" value="（３）">（３）<br>
<input type="radio" name="answer9" value="（４）">（４）<br>
<input type="radio" name="answer9" value="（５）">（５）<br>
</p>

<p><b>(10) 7－8✕6÷2＝</b><br>
（１）－4（２）－17（３）－3（４）－10（５）－15<br>
<input type="radio" name="answer10" value="（１）">（１）<br>
<input type="radio" name="answer10" value="（２）">（２）<br>
<input type="radio" name="answer10" value="（３）">（３）<br>
<input type="radio" name="answer10" value="（４）">（４）<br>
<input type="radio" name="answer10" value="（５）">（５）<br>
</p>

<p><b>(11) 3✕9－4÷2＝</b><br>
（１）28（２）30（３）39（４）19（５）25<br>
<input type="radio" name="answer11" value="（１）">（１）<br>
<input type="radio" name="answer11" value="（２）">（２）<br>
<input type="radio" name="answer11" value="（３）">（３）<br>
<input type="radio" name="answer11" value="（４）">（４）<br>
<input type="radio" name="answer11" value="（５）">（５）<br>
</p>

<p><b>(12) 6÷5＋1＋4＝</b><br>
（１）15.2（２）6.2（３）5.2（４）3.2（５）2.2<br>
<input type="radio" name="answer12" value="（１）">（１）<br>
<input type="radio" name="answer12" value="（２）">（２）<br>
<input type="radio" name="answer12" value="（３）">（３）<br>
<input type="radio" name="answer12" value="（４）">（４）<br>
<input type="radio" name="answer12" value="（５）">（５）<br>
</p>

<p><b>(13)5－6✕8＋4＝</b><br>
（１）－40（２）－25（３）－24（４）－30（５）－39<br>
<input type="radio" name="answer13" value="（１）">（１）<br>
<input type="radio" name="answer13" value="（２）">（２）<br>
<input type="radio" name="answer13" value="（３）">（３）<br>
<input type="radio" name="answer13" value="（４）">（４）<br>
<input type="radio" name="answer13" value="（５）">（５）<br>
</p>

<p><b>(14) 5✕7÷4＋4＝</b><br>
（１）24.75（２）4.75（３）12.75（４） 19.75（５）11.75<br>
<input type="radio" name="answer14" value="（１）">（１）<br>
<input type="radio" name="answer14" value="（２）">（２）<br>
<input type="radio" name="answer14" value="（３）">（３）<br>
<input type="radio" name="answer14" value="（４）">（４）<br>
<input type="radio" name="answer14" value="（５）">（５）<br>
</p>

<p><b>(15)5×3÷4－7＝</b><br>
（１）6.75（２）－9.25（３）0.75（４）8.75（５）－3.25<br>
<input type="radio" name="answer15" value="（１）">（１）<br>
<input type="radio" name="answer15" value="（２）">（２）<br>
<input type="radio" name="answer15" value="（３）">（３）<br>
<input type="radio" name="answer15" value="（４）">（４）<br>
<input type="radio" name="answer15" value="（５）">（５）<br>
</p>

<p><b>(16)7÷2÷8✕4＝</b><br>
（１）5.75（２）1.75（３）ー2.25（４）8.75（５）9.75<br>
<input type="radio" name="answer16" value="（１）">（１）<br>
<input type="radio" name="answer16" value="（２）">（２）<br>
<input type="radio" name="answer16" value="（３）">（３）<br>
<input type="radio" name="answer16" value="（４）">（４）<br>
<input type="radio" name="answer16" value="（５）">（５）<br>
</p>

<p><b>(17) 4＋7✕4✕2＝</b><br>
（１）75（２）67（３）52（４）72（５）60<br>
<input type="radio" name="answer17" value="（１）">（１）<br>
<input type="radio" name="answer17" value="（２）">（２）<br>
<input type="radio" name="answer17" value="（３）">（３）<br>
<input type="radio" name="answer17" value="（４）">（４）<br>
<input type="radio" name="answer17" value="（５）">（５）<br>
</p>

<p><b>(18) 2＋9✕8－8＝</b><br>
（１）80（２）66（３）77（４）67（５）69<br>
<input type="radio" name="answer18" value="（１）">（１）<br>
<input type="radio" name="answer18" value="（２）">（２）<br>
<input type="radio" name="answer18" value="（３）">（３）<br>
<input type="radio" name="answer18" value="（４）">（４）<br>
<input type="radio" name="answer18" value="（５）">（５）<br>
</p>

<p><b>(19) 3＋6✕7＋3＝</b><br>
（１）54（２）42（３）44（４）62（５）48<br>
<input type="radio" name="answer19" value="（１）">（１）<br>
<input type="radio" name="answer19" value="（２）">（２）<br>
<input type="radio" name="answer19" value="（３）">（３）<br>
<input type="radio" name="answer19" value="（４）">（４）<br>
<input type="radio" name="answer19" value="（５）">（５）<br>
</p>

<p><b>(20) 3✕2✕1✕5＝</b><br>
（１）41（２）35（３）25（４）37（５）30<br>
<input type="radio" name="answer20" value="（１）">（１）<br>
<input type="radio" name="answer20" value="（２）">（２）<br>
<input type="radio" name="answer20" value="（３）">（３）<br>
<input type="radio" name="answer20" value="（４）">（４）<br>
<input type="radio" name="answer20" value="（５）">（５）<br>
</p>

<p><b>(21) 3－6÷4－4＝</b><br>
（１）－ 2.5（２）－3.5（３）10.5（４）6.5（５）– 4.5<br>
<input type="radio" name="answer21" value="（１）">（１）<br>
<input type="radio" name="answer21" value="（２）">（２）<br>
<input type="radio" name="answer21" value="（３）">（３）<br>
<input type="radio" name="answer21" value="（４）">（４）<br>
<input type="radio" name="answer21" value="（５）">（５）<br>
</p>

<p><b>(22) 9✕2✕1✕6＝</b><br>
（１）108（２）106（３）117（４）113（５）105<br>
<input type="radio" name="answer22" value="（１）">（１）<br>
<input type="radio" name="answer22" value="（２）">（２）<br>
<input type="radio" name="answer22" value="（３）">（３）<br>
<input type="radio" name="answer22" value="（４）">（４）<br>
<input type="radio" name="answer22" value="（５）">（５）<br>
</p>

<p><b>(23) 4－7✕1✕2＝</b><br>
（１）－7（２）－6（３）－18（４）2（５）－10<br>
<input type="radio" name="answer23" value="（１）">（１）<br>
<input type="radio" name="answer23" value="（２）">（２）<br>
<input type="radio" name="answer23" value="（３）">（３）<br>
<input type="radio" name="answer23" value="（４）">（４）<br>
<input type="radio" name="answer23" value="（５）">（５）<br>
</p>

<p><b>(24) 9✕1÷3✕9＝</b><br>
（１）25（２）37（３）26（４）27（５）17<br>
<input type="radio" name="answer24" value="（１）">（１）<br>
<input type="radio" name="answer24" value="（２）">（２）<br>
<input type="radio" name="answer24" value="（３）">（３）<br>
<input type="radio" name="answer24" value="（４）">（４）<br>
<input type="radio" name="answer24" value="（５）">（５）<br>
</p>

<p><b>(25) 6÷5✕2÷4＝</b><br>
（１）0.2（２）8.6（３）－7.4（４）10.6（５）0.6<br>
<input type="radio" name="answer25" value="（１）">（１）<br>
<input type="radio" name="answer25" value="（２）">（２）<br>
<input type="radio" name="answer25" value="（３）">（３）<br>
<input type="radio" name="answer25" value="（４）">（４）<br>
<input type="radio" name="answer25" value="（５）">（５）<br>
</p>

<p><b>(26) 8÷5✕1—1＝</b><br>
（１）6.6（２）4.6（３）－7.4（４）0.6（５）9.6<br>
<input type="radio" name="answer26" value="（１）">（１）<br>
<input type="radio" name="answer26" value="（２）">（２）<br>
<input type="radio" name="answer26" value="（３）">（３）<br>
<input type="radio" name="answer26" value="（４）">（４）<br>
<input type="radio" name="answer26" value="（５）">（５）<br>
</p>

<p><b>(27) 2＋2✕3✕2＝</b><br>
（１）22（２） 27（３）5（４）14（５）15<br>
<input type="radio" name="answer27" value="（１）">（１）<br>
<input type="radio" name="answer27" value="（２）">（２）<br>
<input type="radio" name="answer27" value="（３）">（３）<br>
<input type="radio" name="answer27" value="（４）">（４）<br>
<input type="radio" name="answer27" value="（５）">（５）<br>
</p>

<p><b>(28) 4＋9✕1－6＝</b><br>
（１）7（２）11（３）9（４）12（５）13<br>
<input type="radio" name="answer28" value="（１）">（１）<br>
<input type="radio" name="answer28" value="（２）">（２）<br>
<input type="radio" name="answer28" value="（３）">（３）<br>
<input type="radio" name="answer28" value="（４）">（４）<br>
<input type="radio" name="answer28" value="（５）">（５）<br>
</p>

<p><b>(29) 5✕8✕3÷5＝</b><br>
（１）31（２）38（３）15（４）24（５）37<br>
<input type="radio" name="answer29" value="（１）">（１）<br>
<input type="radio" name="answer29" value="（２）">（２）<br>
<input type="radio" name="answer29" value="（３）">（３）<br>
<input type="radio" name="answer29" value="（４）">（４）<br>
<input type="radio" name="answer29" value="（５）">（５）<br>
</p>

<p><b>(30) 8÷3÷4✕9＝</b><br>
（１）1（２）7（３）14（４）6（５）21<br>
<input type="radio" name="answer30" value="（１）">（１）<br>
<input type="radio" name="answer30" value="（２）">（２）<br>
<input type="radio" name="answer30" value="（３）">（３）<br>
<input type="radio" name="answer30" value="（４）">（４）<br>
<input type="radio" name="answer30" value="（５）">（５）<br>
</p>

<p><b>(31) 1＋5－4✕4＝</b><br>
（１）－10（２）－ 16（３）－ 4（４）4（５）－8<br>
<input type="radio" name="answer31" value="（１）">（１）<br>
<input type="radio" name="answer31" value="（２）">（２）<br>
<input type="radio" name="answer31" value="（３）">（３）<br>
<input type="radio" name="answer31" value="（４）">（４）<br>
<input type="radio" name="answer31" value="（５）">（５）<br>
</p>

<p><b>(32) 5÷4＋1＋4＝</b><br>
（１）19.25（２）4.25（３）6.25（４）14.25（５）17.25<br>
<input type="radio" name="answer32" value="（１）">（１）<br>
<input type="radio" name="answer32" value="（２）">（２）<br>
<input type="radio" name="answer32" value="（３）">（３）<br>
<input type="radio" name="answer32" value="（４）">（４）<br>
<input type="radio" name="answer32" value="（５）">（５）<br>
</p>

<p><b>(33) 6－5＋3－3＝</b><br>
（１）6（２）1（３）－4（４）2（５）－9<br>
<input type="radio" name="answer33" value="（１）">（１）<br>
<input type="radio" name="answer33" value="（２）">（２）<br>
<input type="radio" name="answer33" value="（３）">（３）<br>
<input type="radio" name="answer33" value="（４）">（４）<br>
<input type="radio" name="answer33" value="（５）">（５）<br>
</p>

<p><b>(34) 4－7✕8＋4＝</b><br>
（１）－48（２）－50（３）－42（４）－38（５）－55<br>
<input type="radio" name="answer34" value="（１）">（１）<br>
<input type="radio" name="answer34" value="（２）">（２）<br>
<input type="radio" name="answer34" value="（３）">（３）<br>
<input type="radio" name="answer34" value="（４）">（４）<br>
<input type="radio" name="answer34" value="（５）">（５）<br>
</p>

<p><b>(35) 2✕1－9＋6＝</b><br>
（１）12（２）13（３）14（４）－1（５）－10<br>
<input type="radio" name="answer35" value="（１）">（１）<br>
<input type="radio" name="answer35" value="（２）">（２）<br>
<input type="radio" name="answer35" value="（３）">（３）<br>
<input type="radio" name="answer35" value="（４）">（４）<br>
<input type="radio" name="answer35" value="（５）">（５）<br>
</p>

<p><b>(36) 9÷2✕4✕6＝</b><br>
（１）110（２）108（３）122（４）115（５）112<br>
<input type="radio" name="answer36" value="（１）">（１）<br>
<input type="radio" name="answer36" value="（２）">（２）<br>
<input type="radio" name="answer36" value="（３）">（３）<br>
<input type="radio" name="answer36" value="（４）">（４）<br>
<input type="radio" name="answer36" value="（５）">（５）<br>
</p>

<p><b>(37) 3＋8－2÷5＝</b><br>
（１）13.6（２）18.6（３）10.6（４）12.6（５）19.6<br>
<input type="radio" name="answer37" value="（１）">（１）<br>
<input type="radio" name="answer37" value="（２）">（２）<br>
<input type="radio" name="answer37" value="（３）">（３）<br>
<input type="radio" name="answer37" value="（４）">（４）<br>
<input type="radio" name="answer37" value="（５）">（５）<br>
</p>

<p><b>(38) 4✕2✕7＋2＝</b><br>
（１）71（２）58（３）52（４）61（５）56<br>
<input type="radio" name="answer38" value="（１）">（１）<br>
<input type="radio" name="answer38" value="（２）">（２）<br>
<input type="radio" name="answer38" value="（３）">（３）<br>
<input type="radio" name="answer38" value="（４）">（４）<br>
<input type="radio" name="answer38" value="（５）">（５）<br>
</p>

<p><b>(39) 2✕9✕1＋6＝</b><br>
（１）34（２）19（３）31（４）18（５）24<br>
<input type="radio" name="answer39" value="（１）">（１）<br>
<input type="radio" name="answer39" value="（２）">（２）<br>
<input type="radio" name="answer39" value="（３）">（３）<br>
<input type="radio" name="answer39" value="（４）">（４）<br>
<input type="radio" name="answer39" value="（５）">（５）<br>
</p>

<p><b>(40) 2✕1－7✕4＝</b><br>
（１）－30（２）－26（３）－13（４）－36（５）－35<br>
<input type="radio" name="answer40" value="（１）">（１）<br>
<input type="radio" name="answer40" value="（２）">（２）<br>
<input type="radio" name="answer40" value="（３）">（３）<br>
<input type="radio" name="answer40" value="（４）">（４）<br>
<input type="radio" name="answer40" value="（５）">（５）<br>
</p>

<br>
<p><b>これでテスト２は終わりです。</b></p><br>

<button type="submit" class="btn btn-success" name="action" value="Test2_submit">送信</button>
<br><br>
</form>
</div>
</div>
</body>
</html>