<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適正テスト１</title>
</head>
<body>
<div class="container">

<h1>テスト１ ＜所要時間５分＞</h1>

<form action="ActionServlet" method="post">
<p><b>(1)並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）今日になって（２）全身が（３）テニスをしたら （４） 筋肉痛になった（５） 昨日久しぶりに<br>
<input type="radio" name="answer1" value="（１）">（１）<br>
<input type="radio" name="answer1" value="（２）">（２）<br>
<input type="radio" name="answer1" value="（３）">（３）<br>
<input type="radio" name="answer1" value="（４）">（４）<br>
<input type="radio" name="answer1" value="（５）">（５）<br>
</p>

<p><b>(2) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）お買い得だ（２）新機能がついた（３）よくなったので（４）上にデザインも（５）先月発売された新商品は<br>
<input type="radio" name="answer2" value="（１）">（１）<br>
<input type="radio" name="answer2" value="（２）">（２）<br>
<input type="radio" name="answer2" value="（３）">（３）<br>
<input type="radio" name="answer2" value="（４）">（４）<br>
<input type="radio" name="answer2" value="（５）">（５）<br>
</p>

<p><b>(3) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）知人と会うと（２）話を聞かされる（３）いつも（４）最近観た映画の（５）映画好きの<br>
<input type="radio" name="answer3" value="（１）">（１）<br>
<input type="radio" name="answer3" value="（２）">（２）<br>
<input type="radio" name="answer3" value="（３）">（３）<br>
<input type="radio" name="answer3" value="（４）">（４）<br>
<input type="radio" name="answer3" value="（５）">（５）<br>
</p>

<p><b>(4)並べ替えたときに３番目になる選択肢を解答してください。</b><br>
（１）学生時代からの（２）身が入らないのは（３）悪い癖だ（４）締め切り直前にならないと（５）仕事に<br>
<input type="radio" name="answer4" value="（１）">（１）<br>
<input type="radio" name="answer4" value="（２）">（２）<br>
<input type="radio" name="answer4" value="（３）">（３）<br>
<input type="radio" name="answer4" value="（４）">（４）<br>
<input type="radio" name="answer4" value="（５）">（５）<br>
</p>

<p><b>(5) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）と評判だから（２）並ぶことになっても（３）あのお店はおいしい （４）少しも苦にならない（５）少々の行列なら<br>
<input type="radio" name="answer5" value="（１）">（１）<br>
<input type="radio" name="answer5" value="（２）">（２）<br>
<input type="radio" name="answer5" value="（３）">（３）<br>
<input type="radio" name="answer5" value="（４）">（４）<br>
<input type="radio" name="answer5" value="（５）">（５）<br>
</p>

<p><b>(6) 並べ替えたときに1番目になる選択肢を解答してください。</b><br>
（１）が発生する（２）トンネルの入り口（３）があると渋滞（４）速度を落とす車（５）で圧迫感から一時的に<br>
<input type="radio" name="answer6" value="（１）">（１）<br>
<input type="radio" name="answer6" value="（２）">（２）<br>
<input type="radio" name="answer6" value="（３）">（３）<br>
<input type="radio" name="answer6" value="（４）">（４）<br>
<input type="radio" name="answer6" value="（５）">（５）<br>
</p>

<p><b>(7) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１） 気持ちよく会議室を（２）利用できるように（３）ほかの人が（４）守ってほしい（５）マナーを<br>
<input type="radio" name="answer7" value="（１）">（１）<br>
<input type="radio" name="answer7" value="（２）">（２）<br>
<input type="radio" name="answer7" value="（３）">（３）<br>
<input type="radio" name="answer7" value="（４）">（４）<br>
<input type="radio" name="answer7" value="（５）">（５）<br>
</p>

<p><b>(8)並べ替えたときに1番目になる選択肢を解答してください。</b><br>
（１）身につける前に（２）明確にすべきだ（３）テクニックを（４）具体的な就職活動の（５）自分は何がしたいのかを<br>
<input type="radio" name="answer8" value="（１）">（１）<br>
<input type="radio" name="answer8" value="（２）">（２）<br>
<input type="radio" name="answer8" value="（３）">（３）<br>
<input type="radio" name="answer8" value="（４）">（４）<br>
<input type="radio" name="answer8" value="（５）">（５）<br>
</p>

<p><b>(9)並べ替えたときに1番目になる選択肢を解答してください。</b><br>
（１）山頂に登ったときの（２）爽快感（３）登山中は辛いが（４）達成感や（５）は何事にも代え難い<br>
<input type="radio" name="answer9" value="（１）">（１）<br>
<input type="radio" name="answer9" value="（２）">（２）<br>
<input type="radio" name="answer9" value="（３）">（３）<br>
<input type="radio" name="answer9" value="（４）">（４）<br>
<input type="radio" name="answer9" value="（５）">（５）<br>
</p>

<p><b>(10) 並べ替えたときに5番目になる選択肢を解答してください。</b><br>
（１）話してしまう（２） 持たせる方が （３） 露骨に全てを（４）いいこともある（５）より含みを<br>
<input type="radio" name="answer10" value="（１）">（１）<br>
<input type="radio" name="answer10" value="（２）">（２）<br>
<input type="radio" name="answer10" value="（３）">（３）<br>
<input type="radio" name="answer10" value="（４）">（４）<br>
<input type="radio" name="answer10" value="（５）">（５）<br>
</p>

<p><b>(11) 並べ替えたときに3番目になる選択肢を解答してください。</b><br>
（１）成功しようとすると（２）身のほどを（３）人の真似をして（４）失敗する（５）知らずに<br>
<input type="radio" name="answer11" value="（１）">（１）<br>
<input type="radio" name="answer11" value="（２）">（２）<br>
<input type="radio" name="answer11" value="（３）">（３）<br>
<input type="radio" name="answer11" value="（４）">（４）<br>
<input type="radio" name="answer11" value="（５）">（５）<br>
</p>

<p><b>(12) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）つける際には（２）緊急性の（３）業務の優先順位を（４）両面から判断する（５）個々の業務の重要性と<br>
<input type="radio" name="answer12" value="（１）">（１）<br>
<input type="radio" name="answer12" value="（２）">（２）<br>
<input type="radio" name="answer12" value="（３）">（３）<br>
<input type="radio" name="answer12" value="（４）">（４）<br>
<input type="radio" name="answer12" value="（５）">（５）<br>
</p>

<p><b>(13) 並べ替えたときに1番目になる選択肢を解答してください。</b><br>
（１）早計である（２）ものごとの（３）全体を判断する（４）一部だけを見て（５）のはいかにも<br>
<input type="radio" name="answer13" value="（１）">（１）<br>
<input type="radio" name="answer13" value="（２）">（２）<br>
<input type="radio" name="answer13" value="（３）">（３）<br>
<input type="radio" name="answer13" value="（４）">（４）<br>
<input type="radio" name="answer13" value="（５）">（５）<br>
</p>

<p><b>(14) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）何が（２）到来で（３）どう変化するのか（４）誰もわからない（５）人口減少社会の<br>
<input type="radio" name="answer14" value="（１）">（１）<br>
<input type="radio" name="answer14" value="（２）">（２）<br>
<input type="radio" name="answer14" value="（３）">（３）<br>
<input type="radio" name="answer14" value="（４）">（４）<br>
<input type="radio" name="answer14" value="（５）">（５）<br>
</p>

<p><b>(15)並べ替えたときに5番目になる選択肢を解答してください。</b><br>
（１）店で見つけた（２）前から欲しい（３）商品を（４）と思っていた（５）自宅の近くにある<br>
<input type="radio" name="answer15" value="（１）">（１）<br>
<input type="radio" name="answer15" value="（２）">（２）<br>
<input type="radio" name="answer15" value="（３）">（３）<br>
<input type="radio" name="answer15" value="（４）">（４）<br>
<input type="radio" name="answer15" value="（５）">（５）<br>
</p>

<p><b>(16) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）お寺に（２）山の中腹にある（３）休憩をとらずに（４）頂上を目指した（５）参拝した後<br>
<input type="radio" name="answer16" value="（１）">（１）<br>
<input type="radio" name="answer16" value="（２）">（２）<br>
<input type="radio" name="answer16" value="（３）">（３）<br>
<input type="radio" name="answer16" value="（４）">（４）<br>
<input type="radio" name="answer16" value="（５）">（５）<br>
</p>

<p><b>(17) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）落とし物の大半が（２）誠実な国である（３）持ち主に（４）日本は（５）返ってくるような<br>
<input type="radio" name="answer17" value="（１）">（１）<br>
<input type="radio" name="answer17" value="（２）">（２）<br>
<input type="radio" name="answer17" value="（３）">（３）<br>
<input type="radio" name="answer17" value="（４）">（４）<br>
<input type="radio" name="answer17" value="（５）">（５）<br>
</p>

<p><b>(18)並べ替えたときに4番目になる選択肢を解答してください</b><br>
（１）梱包の仕方に（２） 引っ越しの際には （３）大きく変わってくる（４）作業の効率は（５）気をつけるだけで<br>
<input type="radio" name="answer18" value="（１）">（１）<br>
<input type="radio" name="answer18" value="（２）">（２）<br>
<input type="radio" name="answer18" value="（３）">（３）<br>
<input type="radio" name="answer18" value="（４）">（４）<br>
<input type="radio" name="answer18" value="（５）">（５）<br>
</p>

<p><b>(19) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）食料を（２）が望ましい（３）自宅に何日分かの（４） 備蓄しておくこと （５）水や<br>
<input type="radio" name="answer19" value="（１）">（１）<br>
<input type="radio" name="answer19" value="（２）">（２）<br>
<input type="radio" name="answer19" value="（３）">（３）<br>
<input type="radio" name="answer19" value="（４）">（４）<br>
<input type="radio" name="answer19" value="（５）">（５）<br>
</p>

<p><b>(20) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）泣くから（２）先人がいた（３）感情に先立つとして（４）悲しくなると考えた（５）身体の反応は<br>
<input type="radio" name="answer20" value="（１）">（１）<br>
<input type="radio" name="answer20" value="（２）">（２）<br>
<input type="radio" name="answer20" value="（３）">（３）<br>
<input type="radio" name="answer20" value="（４）">（４）<br>
<input type="radio" name="answer20" value="（５）">（５）<br>
</p>

<p><b>(21) 並べ替えたときに1番目になる選択肢を解答してください。</b><br>
（１）あまりに（２）協調性を（３）個性が（４）失われることもある（５）重んじようとする<br>
<input type="radio" name="answer21" value="（１）">（１）<br>
<input type="radio" name="answer21" value="（２）">（２）<br>
<input type="radio" name="answer21" value="（３）">（３）<br>
<input type="radio" name="answer21" value="（４）">（４）<br>
<input type="radio" name="answer21" value="（５）">（５）<br>
</p>

<p><b>(22) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）とも呼ばれている（２）医薬品のことで（３）後発品（４）ジェネリック医薬品は（５）成分の特許の切れた<br>
<input type="radio" name="answer22" value="（１）">（１）<br>
<input type="radio" name="answer22" value="（２）">（２）<br>
<input type="radio" name="answer22" value="（３）">（３）<br>
<input type="radio" name="answer22" value="（４）">（４）<br>
<input type="radio" name="answer22" value="（５）">（５）<br>
</p>

<p><b>(23) 並べ替えたときに3番目になる選択肢を解答してください。</b><br>
（１）その人がどんな状況に（２）相手に何かを（３）あるのかを（４）確認するのが基本だ（５）依頼する時には<br>
<input type="radio" name="answer23" value="（１）">（１）<br>
<input type="radio" name="answer23" value="（２）">（２）<br>
<input type="radio" name="answer23" value="（３）">（３）<br>
<input type="radio" name="answer23" value="（４）">（４）<br>
<input type="radio" name="answer23" value="（５）">（５）<br>
</p>

<p><b>(24) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）結局普段使うのは（２）のはよいが（３）そのうちの一部だ（４）スマートフォンは（５）様々なアプリを入れられる<br>
<input type="radio" name="answer24" value="（１）">（１）<br>
<input type="radio" name="answer24" value="（２）">（２）<br>
<input type="radio" name="answer24" value="（３）">（３）<br>
<input type="radio" name="answer24" value="（４）">（４）<br>
<input type="radio" name="answer24" value="（５）">（５）<br>
</p>

<p><b>(25)並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）電話に対しては（２）に早急に対応すべきだ（３）お客様からの（４）問い合わせ（５）たらい回しをせず<br>
<input type="radio" name="answer25" value="（１）">（１）<br>
<input type="radio" name="answer25" value="（２）">（２）<br>
<input type="radio" name="answer25" value="（３）">（３）<br>
<input type="radio" name="answer25" value="（４）">（４）<br>
<input type="radio" name="answer25" value="（５）">（５）<br>
</p>

<p><b>(26) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）電気を（２）節約するためにまず（３）使っているかを把握した（４）何にどれくらい（５）電気代を<br>
<input type="radio" name="answer26" value="（１）">（１）<br>
<input type="radio" name="answer26" value="（２）">（２）<br>
<input type="radio" name="answer26" value="（３）">（３）<br>
<input type="radio" name="answer26" value="（４）">（４）<br>
<input type="radio" name="answer26" value="（５）">（５）<br>
</p>

<p><b>(27) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）にすぎない（２）持っていても（３）のはそのうちの一部 （４）複数のクレジットカードを（５）普段よく使う<br>
<input type="radio" name="answer27" value="（１）">（１）<br>
<input type="radio" name="answer27" value="（２）">（２）<br>
<input type="radio" name="answer27" value="（３）">（３）<br>
<input type="radio" name="answer27" value="（４）">（４）<br>
<input type="radio" name="answer27" value="（５）">（５）<br>
</p>

<p><b>(28) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）議論は進まない（２）意見の対立は（３）ばかりでも（４）望ましいものではないが（５）対立を避けて<br>
<input type="radio" name="answer28" value="（１）">（１）<br>
<input type="radio" name="answer28" value="（２）">（２）<br>
<input type="radio" name="answer28" value="（３）">（３）<br>
<input type="radio" name="answer28" value="（４）">（４）<br>
<input type="radio" name="answer28" value="（５）">（５）<br>
</p>

<p><b>(29) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）解答していた（２）質問をされても（３）のには感心した（４）どんな内容の（５）その講師が的確に<br>
<input type="radio" name="answer29" value="（１）">（１）<br>
<input type="radio" name="answer29" value="（２）">（２）<br>
<input type="radio" name="answer29" value="（３）">（３）<br>
<input type="radio" name="answer29" value="（４）">（４）<br>
<input type="radio" name="answer29" value="（５）">（５）<br>
</p>

<p><b>(30) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）今よりもっと（２）しなければならない（３）早く就寝（４）したいのなら（５）もし早起きを<br>
<input type="radio" name="answer30" value="（１）">（１）<br>
<input type="radio" name="answer30" value="（２）">（２）<br>
<input type="radio" name="answer30" value="（３）">（３）<br>
<input type="radio" name="answer30" value="（４）">（４）<br>
<input type="radio" name="answer30" value="（５）">（５）<br>
</p>

<p><b>(31) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）聴衆を（２）優秀な指揮者に率いられた（３）魅了した（４）オーケストラは（５）見事なアンサンブルを奏でて<br>
<input type="radio" name="answer31" value="（１）">（１）<br>
<input type="radio" name="answer31" value="（２）">（２）<br>
<input type="radio" name="answer31" value="（３）">（３）<br>
<input type="radio" name="answer31" value="（４）">（４）<br>
<input type="radio" name="answer31" value="（５）">（５）<br>
</p>

<p><b>(32) 並べ替えたときに3番目になる選択肢を解答してください。</b><br>
（１）そうでない資格（２）もっているだけで（３）もある（４）就職に有利な資格（５）もあれば<br>
<input type="radio" name="answer32" value="（１）">（１）<br>
<input type="radio" name="answer32" value="（２）">（２）<br>
<input type="radio" name="answer32" value="（３）">（３）<br>
<input type="radio" name="answer32" value="（４）">（４）<br>
<input type="radio" name="answer32" value="（５）">（５）<br>
</p>

<p><b>(33) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）ファンの間（２）不調の主力選手を（３）批判する声が（４）から続出している（５）使い続ける監督を<br>
<input type="radio" name="answer33" value="（１）">（１）<br>
<input type="radio" name="answer33" value="（２）">（２）<br>
<input type="radio" name="answer33" value="（３）">（３）<br>
<input type="radio" name="answer33" value="（４）">（４）<br>
<input type="radio" name="answer33" value="（５）">（５）<br>
</p>

<p><b>(34) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）走るようでは（２）私利私欲に（３）手にしても（４）長続きしない（５）権力を<br>
<input type="radio" name="answer34" value="（１）">（１）<br>
<input type="radio" name="answer34" value="（２）">（２）<br>
<input type="radio" name="answer34" value="（３）">（３）<br>
<input type="radio" name="answer34" value="（４）">（４）<br>
<input type="radio" name="answer34" value="（５）">（５）<br>
</p>

<p><b>(35) 並べ替えたときに4番目になる選択肢を解答してください。</b><br>
（１）過去の（２）大きな問題は見られない（３）売上データを（４）この商品に（５）見る限りでは<br>
<input type="radio" name="answer35" value="（１）">（１）<br>
<input type="radio" name="answer35" value="（２）">（２）<br>
<input type="radio" name="answer35" value="（３）">（３）<br>
<input type="radio" name="answer35" value="（４）">（４）<br>
<input type="radio" name="answer35" value="（５）">（５）<br>
</p>

<p><b>(36) 並べ替えたときに3番目になる選択肢を解答してください。</b><br>
（１）効率向上（２）オフィスの環境を（３）にもつながる（４）整備することが（５）業務の<br>
<input type="radio" name="answer36" value="（１）">（１）<br>
<input type="radio" name="answer36" value="（２）">（２）<br>
<input type="radio" name="answer36" value="（３）">（３）<br>
<input type="radio" name="answer36" value="（４）">（４）<br>
<input type="radio" name="answer36" value="（５）">（５）<br>
</p>

<p><b>(37) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）基本的な技術が（２）応用的な手法も（３）すぐに修得することができる（４）彼は（５）身に付いているから<br>
<input type="radio" name="answer37" value="（１）">（１）<br>
<input type="radio" name="answer37" value="（２）">（２）<br>
<input type="radio" name="answer37" value="（３）">（３）<br>
<input type="radio" name="answer37" value="（４）">（４）<br>
<input type="radio" name="answer37" value="（５）">（５）<br>
</p>

<p><b>(38) 並べ替えたときに2番目になる選択肢を解答してください。</b><br>
（１）あれば夢を（２）弛まぬ努力が（３）ことができる（４）叶える（４）たとえ貧しくとも<br>
<input type="radio" name="answer38" value="（１）">（１）<br>
<input type="radio" name="answer38" value="（２）">（２）<br>
<input type="radio" name="answer38" value="（３）">（３）<br>
<input type="radio" name="answer38" value="（４）">（４）<br>
<input type="radio" name="answer38" value="（５）">（５）<br>
</p>

<p><b>(39) 並べ替えたときに1番目になる選択肢を解答してください。</b><br>
（１）任せる際には（２）することが必要だ（３）高める工夫を（４）部下に仕事を（５）部下のモチベーションを<br>
<input type="radio" name="answer39" value="（１）">（１）<br>
<input type="radio" name="answer39" value="（２）">（２）<br>
<input type="radio" name="answer39" value="（３）">（３）<br>
<input type="radio" name="answer39" value="（４）">（４）<br>
<input type="radio" name="answer39" value="（５）">（５）<br>
</p>

<p><b>(40) 並べ替えたときに3番目になる選択肢を解答してください。</b><br>
（１）俳優が多数出演（２）どれも似たような（３）役柄で面白みに欠ける（４）あのドラマには有名な（５）している割には<br>
<input type="radio" name="answer40" value="（１）">（１）<br>
<input type="radio" name="answer40" value="（２）">（２）<br>
<input type="radio" name="answer40" value="（３）">（３）<br>
<input type="radio" name="answer40" value="（４）">（４）<br>
<input type="radio" name="answer40" value="（５）">（５）<br>
</p>

<br>
<p><b>これでテスト１は終わりです。</b></p><br>

<button type="submit" class="btn btn-success" name="action" value="Test1_submit">送信</button>
<br><br>
</form>
</div>
</body>
</html>