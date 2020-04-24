<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<meta charset="UTF-8">
<title>適正テスト４</title>
</head>
<body>
<div class="container">

<h1>テスト４ ＜所要時間５分＞</h1>

<form action="ActionServlet" method="post">
<p><b>(1) 30 , 34 , □ , 42 , 46</b><br>
（１）36（２）40（３）38（４）50（５）39<br>
<input type="radio" name="answer1" value="（１）">（１）<br>
<input type="radio" name="answer1" value="（２）">（２）<br>
<input type="radio" name="answer1" value="（３）">（３）<br>
<input type="radio" name="answer1" value="（４）">（４）<br>
<input type="radio" name="answer1" value="（５）">（５）<br>
</p>

<p><b>(2) 102 , □ , 106 , 108 , 110</b><br>
（１）102（２）103（３）104（４）105（５）106<br>
<input type="radio" name="answer2" value="（１）">（１）<br>
<input type="radio" name="answer2" value="（２）">（２）<br>
<input type="radio" name="answer2" value="（３）">（３）<br>
<input type="radio" name="answer2" value="（４）">（４）<br>
<input type="radio" name="answer2" value="（５）">（５）<br>
</p>

<p><b>(3) 90 , 93 , 96 , □ , 102</b><br>
（１）100（２）97 （３）98（４）99（５）101<br>
<input type="radio" name="answer3" value="（１）">（１）<br>
<input type="radio" name="answer3" value="（２）">（２）<br>
<input type="radio" name="answer3" value="（３）">（３）<br>
<input type="radio" name="answer3" value="（４）">（４）<br>
<input type="radio" name="answer3" value="（５）">（５）<br>
</p>

<p><b>(4) 81 , □ , 85 , 87 , 89</b><br>
（１）83（２）81（３）82（４）85（５）84<br>
<input type="radio" name="answer4" value="（１）">（１）<br>
<input type="radio" name="answer4" value="（２）">（２）<br>
<input type="radio" name="answer4" value="（３）">（３）<br>
<input type="radio" name="answer4" value="（４）">（４）<br>
<input type="radio" name="answer4" value="（５）">（５）<br>
</p>

<p><b>(5) 64 , 70 , □ , 82 , 88</b><br>
（１）76（２）72（３）80（４）70（５）75<br>
<input type="radio" name="answer5" value="（１）">（１）<br>
<input type="radio" name="answer5" value="（２）">（２）<br>
<input type="radio" name="answer5" value="（３）">（３）<br>
<input type="radio" name="answer5" value="（４）">（４）<br>
<input type="radio" name="answer5" value="（５）">（５）<br>
</p>

<p><b>(6) －20 , －16 , －12 , □ , －4</b><br>
（１）8（２）－ 10（３）－8（４）－9（５）－6<br>
<input type="radio" name="answer6" value="（１）">（１）<br>
<input type="radio" name="answer6" value="（２）">（２）<br>
<input type="radio" name="answer6" value="（３）">（３）<br>
<input type="radio" name="answer6" value="（４）">（４）<br>
<input type="radio" name="answer6" value="（５）">（５）<br>
</p>

<p><b>(7) －80 , － 83 , －86 , □ , －92</b><br>
（１）－ 87（２）－ 90（３）－ 89（４）－ 80（５）－ 83<br>
<input type="radio" name="answer7" value="（１）">（１）<br>
<input type="radio" name="answer7" value="（２）">（２）<br>
<input type="radio" name="answer7" value="（３）">（３）<br>
<input type="radio" name="answer7" value="（４）">（４）<br>
<input type="radio" name="answer7" value="（５）">（５）<br>
</p>

<p><b>(8) －6 , －9 , －12 , □ , －18</b><br>
（１）－9（２）－15（３）－ 12（４）－13（５）－17<br>
<input type="radio" name="answer8" value="（１）">（１）<br>
<input type="radio" name="answer8" value="（２）">（２）<br>
<input type="radio" name="answer8" value="（３）">（３）<br>
<input type="radio" name="answer8" value="（４）">（４）<br>
<input type="radio" name="answer8" value="（５）">（５）<br>
</p>

<p><b>(9) 48 , 43 , 38 , 33 , □</b><br>
（１）30（２）22（３）25（４）28（５）26<br>
<input type="radio" name="answer9" value="（１）">（１）<br>
<input type="radio" name="answer9" value="（２）">（２）<br>
<input type="radio" name="answer9" value="（３）">（３）<br>
<input type="radio" name="answer9" value="（４）">（４）<br>
<input type="radio" name="answer9" value="（５）">（５）<br>
</p>

<p><b>(10) 90 , 96 , □ , 108 , 114</b><br>
（１）100（２）104（３）98（４）102（５）106<br>
<input type="radio" name="answer10" value="（１）">（１）<br>
<input type="radio" name="answer10" value="（２）">（２）<br>
<input type="radio" name="answer10" value="（３）">（３）<br>
<input type="radio" name="answer10" value="（４）">（４）<br>
<input type="radio" name="answer10" value="（５）">（５）<br>
</p>

<p><b>(11)－37 , －29 , －21 , □ , －5</b><br>
（１）－9（２）－ 15（３）－11（４）－ 20（５）－13<br>
<input type="radio" name="answer11" value="（１）">（１）<br>
<input type="radio" name="answer11" value="（２）">（２）<br>
<input type="radio" name="answer11" value="（３）">（３）<br>
<input type="radio" name="answer11" value="（４）">（４）<br>
<input type="radio" name="answer11" value="（５）">（５）<br>
</p>

<p><b>(12)－24 , －28 , －32 , □ , －40</b><br>
（１）－34（２）－ 35（３）－ 83（４）－ 36（５）－ 28<br>
<input type="radio" name="answer12" value="（１）">（１）<br>
<input type="radio" name="answer12" value="（２）">（２）<br>
<input type="radio" name="answer12" value="（３）">（３）<br>
<input type="radio" name="answer12" value="（４）">（４）<br>
<input type="radio" name="answer12" value="（５）">（５）<br>
</p>

<p><b>(13) － 67 , □ , －71 , －73 , －75</b><br>
（１）－ 65（２）－ 69（３）－70（４）－ 73（５）－ 68<br>
<input type="radio" name="answer13" value="（１）">（１）<br>
<input type="radio" name="answer13" value="（２）">（２）<br>
<input type="radio" name="answer13" value="（３）">（３）<br>
<input type="radio" name="answer13" value="（４）">（４）<br>
<input type="radio" name="answer13" value="（５）">（５）<br>
</p>

<p><b>(14) 99 , 106 , 113 , □ , 127</b><br>
（１）120（２）118（３）119（４）117（５）124<br>
<input type="radio" name="answer14" value="（１）">（１）<br>
<input type="radio" name="answer14" value="（２）">（２）<br>
<input type="radio" name="answer14" value="（３）">（３）<br>
<input type="radio" name="answer14" value="（４）">（４）<br>
<input type="radio" name="answer14" value="（５）">（５）<br>
</p>

<p><b>(15)－93 , □, －83, －78 , －73</b><br>
（１）－ 90（２）－91（３）－ 85（４）－ 88（５）－87<br>
<input type="radio" name="answer15" value="（１）">（１）<br>
<input type="radio" name="answer15" value="（２）">（２）<br>
<input type="radio" name="answer15" value="（３）">（３）<br>
<input type="radio" name="answer15" value="（４）">（４）<br>
<input type="radio" name="answer15" value="（５）">（５）<br>
</p>

<p><b>(16)□ , － 83 , －88 , －93 , －98</b><br>
（１）－75（２）－ 80（３）－79（４）－70（５）－ 78<br>
<input type="radio" name="answer16" value="（１）">（１）<br>
<input type="radio" name="answer16" value="（２）">（２）<br>
<input type="radio" name="answer16" value="（３）">（３）<br>
<input type="radio" name="answer16" value="（４）">（４）<br>
<input type="radio" name="answer16" value="（５）">（５）<br>
</p>

<p><b>(17) 32 , 25 , 18 , □ , 4</b><br>
（１）8（２）13（３）7（４）11（５）9<br>
<input type="radio" name="answer17" value="（１）">（１）<br>
<input type="radio" name="answer17" value="（２）">（２）<br>
<input type="radio" name="answer17" value="（３）">（３）<br>
<input type="radio" name="answer17" value="（４）">（４）<br>
<input type="radio" name="answer17" value="（５）">（５）<br>
</p>

<p><b>(18) 43 , 36 , □ , 22 , 15</b><br>
（１）25（２）30（３）27（４）28（５）29<br>
<input type="radio" name="answer18" value="（１）">（１）<br>
<input type="radio" name="answer18" value="（２）">（２）<br>
<input type="radio" name="answer18" value="（３）">（３）<br>
<input type="radio" name="answer18" value="（４）">（４）<br>
<input type="radio" name="answer18" value="（５）">（５）<br>
</p>

<p><b>(19)－97 , －103 , －109 , －115 , □</b><br>
（１）－119（２）－ 133（３）－ 127（４）－123（５）－121<br>
<input type="radio" name="answer19" value="（１）">（１）<br>
<input type="radio" name="answer19" value="（２）">（２）<br>
<input type="radio" name="answer19" value="（３）">（３）<br>
<input type="radio" name="answer19" value="（４）">（４）<br>
<input type="radio" name="answer19" value="（５）">（５）<br>
</p>

<p><b>(20) □ , 66 , 74 , 82 , 90</b><br>
（１）55（２）48（３）49（４）58（５）60<br>
<input type="radio" name="answer20" value="（１）">（１）<br>
<input type="radio" name="answer20" value="（２）">（２）<br>
<input type="radio" name="answer20" value="（３）">（３）<br>
<input type="radio" name="answer20" value="（４）">（４）<br>
<input type="radio" name="answer20" value="（５）">（５）<br>
</p>

<p><b>(21)－61 , □ , －73 , －79 ,－85</b><br>
（１）－ 63（２）－64（３）－ 65（４）ー60（５）－ 67<br>
<input type="radio" name="answer21" value="（１）">（１）<br>
<input type="radio" name="answer21" value="（２）">（２）<br>
<input type="radio" name="answer21" value="（３）">（３）<br>
<input type="radio" name="answer21" value="（４）">（４）<br>
<input type="radio" name="answer21" value="（５）">（５）<br>
</p>

<p><b>(22) －19 , □ , －31 , －37 , －43</b><br>
（１）－22（２）－ 23（３）－ 30（４）－ 25（５）－ 27<br>
<input type="radio" name="answer22" value="（１）">（１）<br>
<input type="radio" name="answer22" value="（２）">（２）<br>
<input type="radio" name="answer22" value="（３）">（３）<br>
<input type="radio" name="answer22" value="（４）">（４）<br>
<input type="radio" name="answer22" value="（５）">（５）<br>
</p>

<p><b>(23)－81 , －89 , □ , －105 , －113</b><br>
（１）－97（２）－95（３）－93（４）－90（５）－103<br>
<input type="radio" name="answer23" value="（１）">（１）<br>
<input type="radio" name="answer23" value="（２）">（２）<br>
<input type="radio" name="answer23" value="（３）">（３）<br>
<input type="radio" name="answer23" value="（４）">（４）<br>
<input type="radio" name="answer23" value="（５）">（５）<br>
</p>

<p><b>(24)－12 , 4 ,－12 , 4 , □</b><br>
（１）－8（２）10（３）－4（４）－ 12（５）12<br>
<input type="radio" name="answer24" value="（１）">（１）<br>
<input type="radio" name="answer24" value="（２）">（２）<br>
<input type="radio" name="answer24" value="（３）">（３）<br>
<input type="radio" name="answer24" value="（４）">（４）<br>
<input type="radio" name="answer24" value="（５）">（５）<br>
</p>

<p><b>(25) 1 , 2 , □ , 2 , 1</b><br>
（１）4（２）2（３）1（４）－1（５）－2<br>
<input type="radio" name="answer25" value="（１）">（１）<br>
<input type="radio" name="answer25" value="（２）">（２）<br>
<input type="radio" name="answer25" value="（３）">（３）<br>
<input type="radio" name="answer25" value="（４）">（４）<br>
<input type="radio" name="answer25" value="（５）">（５）<br>
</p>

<p><b>(26) － 13 , 5 , □ , 5 , －13</b><br>
（１）1（２）5（３）0（４）－7（５）－ 13<br>
<input type="radio" name="answer26" value="（１）">（１）<br>
<input type="radio" name="answer26" value="（２）">（２）<br>
<input type="radio" name="answer26" value="（３）">（３）<br>
<input type="radio" name="answer26" value="（４）">（４）<br>
<input type="radio" name="answer26" value="（５）">（５）<br>
</p>

<p><b>(27)□ , －10 , －18 , －34 , －66</b><br>
（１）2（２）－2（３）4（４）0（５）－6<br>
<input type="radio" name="answer27" value="（１）">（１）<br>
<input type="radio" name="answer27" value="（２）">（２）<br>
<input type="radio" name="answer27" value="（３）">（３）<br>
<input type="radio" name="answer27" value="（４）">（４）<br>
<input type="radio" name="answer27" value="（５）">（５）<br>
</p>

<p><b>(28)□ , 22 , 54 , 118 , 246</b><br>
（１）10（２）20（３）15（４）6（５）4<br>
<input type="radio" name="answer28" value="（１）">（１）<br>
<input type="radio" name="answer28" value="（２）">（２）<br>
<input type="radio" name="answer28" value="（３）">（３）<br>
<input type="radio" name="answer28" value="（４）">（４）<br>
<input type="radio" name="answer28" value="（５）">（５）<br>
</p>

<p><b>(29)－4 , －6 , －10 , －18 , □</b><br>
（１）－19（２）－ 24（３）－28（４）－ 30（５）－ 34<br>
<input type="radio" name="answer29" value="（１）">（１）<br>
<input type="radio" name="answer29" value="（２）">（２）<br>
<input type="radio" name="answer29" value="（３）">（３）<br>
<input type="radio" name="answer29" value="（４）">（４）<br>
<input type="radio" name="answer29" value="（５）">（５）<br>
</p>

<p><b>(30)－1 , 7 , －9 , □ , －41</b><br>
（１）32（２）18（３）11（４） 23（５）27<br>
<input type="radio" name="answer30" value="（１）">（１）<br>
<input type="radio" name="answer30" value="（２）">（２）<br>
<input type="radio" name="answer30" value="（３）">（３）<br>
<input type="radio" name="answer30" value="（４）">（４）<br>
<input type="radio" name="answer30" value="（５）">（５）<br>
</p>

<p><b>(31) 11 , － 15 , 37 , □ , 141</b><br>
（１）65（２）－55（３）－67（４）－45（５）57<br>
<input type="radio" name="answer31" value="（１）">（１）<br>
<input type="radio" name="answer31" value="（２）">（２）<br>
<input type="radio" name="answer31" value="（３）">（３）<br>
<input type="radio" name="answer31" value="（４）">（４）<br>
<input type="radio" name="answer31" value="（５）">（５）<br>
</p>

<p><b>(32) －3 , 13 , － 19 , □ , － 83</b><br>
（１）45（２）－ 48（３）－ 60（４）－ 57（５）－35<br>
<input type="radio" name="answer32" value="（１）">（１）<br>
<input type="radio" name="answer32" value="（２）">（２）<br>
<input type="radio" name="answer32" value="（３）">（３）<br>
<input type="radio" name="answer32" value="（４）">（４）<br>
<input type="radio" name="answer32" value="（５）">（５）<br>
</p>

<p><b>(33) □ , －24 , － 56 , －120 , －248</b><br>
（１）0（２）4（３）－ 8（４）－ 10（５）－ 18<br>
<input type="radio" name="answer33" value="（１）">（１）<br>
<input type="radio" name="answer33" value="（２）">（２）<br>
<input type="radio" name="answer33" value="（３）">（３）<br>
<input type="radio" name="answer33" value="（４）">（４）<br>
<input type="radio" name="answer33" value="（５）">（５）<br>
</p>

<p><b>(34) 5 , 9 , 17 , □ , 65</b><br>
（１）33（２）21（３）35（４）48（５）53<br>
<input type="radio" name="answer34" value="（１）">（１）<br>
<input type="radio" name="answer34" value="（２）">（２）<br>
<input type="radio" name="answer34" value="（３）">（３）<br>
<input type="radio" name="answer34" value="（４）">（４）<br>
<input type="radio" name="answer34" value="（５）">（５）<br>
</p>

<p><b>(35) － 11 , －23 , － 47 , － 95 , □</b><br>
（１）－ 191（２）－ 180 （３）－ 150（４）－ 99（５）－ 129<br>
<input type="radio" name="answer35" value="（１）">（１）<br>
<input type="radio" name="answer35" value="（２）">（２）<br>
<input type="radio" name="answer35" value="（３）">（３）<br>
<input type="radio" name="answer35" value="（４）">（４）<br>
<input type="radio" name="answer35" value="（５）">（５）<br>
</p>

<p><b>(36) －7 , 13 , □ , 53 , － 107</b><br>
（１）－37（２）－ 27（３）－ 50（４）－ 24（５）36<br>
<input type="radio" name="answer36" value="（１）">（１）<br>
<input type="radio" name="answer36" value="（２）">（２）<br>
<input type="radio" name="answer36" value="（３）">（３）<br>
<input type="radio" name="answer36" value="（４）">（４）<br>
<input type="radio" name="answer36" value="（５）">（５）<br>
</p>

<p><b>(37) 3 , －3 , 3 , □ , 3</b><br>
（１）4（２）－3（３）－6（４）2 . 5（５）－ 1. 5<br>
<input type="radio" name="answer37" value="（１）">（１）<br>
<input type="radio" name="answer37" value="（２）">（２）<br>
<input type="radio" name="answer37" value="（３）">（３）<br>
<input type="radio" name="answer37" value="（４）">（４）<br>
<input type="radio" name="answer37" value="（５）">（５）<br>
</p>

<p><b>(38) 3 , －9 , 15 , － 33 , □</b><br>
（１）81（２）－71（３）63（４）－ 55 （５）49<br>
<input type="radio" name="answer38" value="（１）">（１）<br>
<input type="radio" name="answer38" value="（２）">（２）<br>
<input type="radio" name="answer38" value="（３）">（３）<br>
<input type="radio" name="answer38" value="（４）">（４）<br>
<input type="radio" name="answer38" value="（５）">（５）<br>
</p>

<p><b>(39) 1 , □ , 7 , －17 , 31</b><br>
（１）－3（２）－2（３）－ 5（４）－7（５）4<br>
<input type="radio" name="answer39" value="（１）">（１）<br>
<input type="radio" name="answer39" value="（２）">（２）<br>
<input type="radio" name="answer39" value="（３）">（３）<br>
<input type="radio" name="answer39" value="（４）">（４）<br>
<input type="radio" name="answer39" value="（５）">（５）<br>
</p>

<p><b>(40) 1 , － 10 , 100 , □ , 10000</b><br>
（１）1000（２）－ 500（３）－1000（４）750（５）－ 2500<br>
<input type="radio" name="answer40" value="（１）">（１）<br>
<input type="radio" name="answer40" value="（２）">（２）<br>
<input type="radio" name="answer40" value="（３）">（３）<br>
<input type="radio" name="answer40" value="（４）">（４）<br>
<input type="radio" name="answer40" value="（５）">（５）<br>
</p>

<br>
<p><b>これでテスト４は終わりです。</b></p><br>

<button type="submit" class="btn btn-success" name="action" value="Test4_submit">送信</button>
<br><br>
</form>
</div>
</body>
</html>