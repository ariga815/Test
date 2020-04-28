<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="common.jsp" flush="true" />
<title>適正テスト３</title>
</head>
<body>
    <script>
      alert('このテストは時間管理されています。\n制限時間は５分です。\n「OK」をクリックするとスタートします。');
    var alertmsg = function(){
  	alert("時間です！\n次のページに進みます。");
  	var test1 = document.getElementById("test3");
  	var input = document.createElement('input');
  	input.setAttribute('name', 'action');
  	input.setAttribute('value', 'Test3_submit');
  	test1.appendChild(input);
  	test1.submit();
	}
	setTimeout(alertmsg, 300000);
	</script>
<div class="container">

<h1>テスト３ ＜所要時間５分＞</h1>

<form id="test3" action="ActionServlet" method="post">
<p><b>(1) 電話：受話器 ＝□：ペダル</b><br>
（１）自転車（２）ボート（３）スキー（４）ダイヤル （５）呼び鈴<br>
<input type="radio" name="answer1" value="（１）">（１）<br>
<input type="radio" name="answer1" value="（２）">（２）<br>
<input type="radio" name="answer1" value="（３）">（３）<br>
<input type="radio" name="answer1" value="（４）">（４）<br>
<input type="radio" name="answer1" value="（５）">（５）<br>
</p>

<p><b>(2) □：風 ＝水道：水</b><br>
（１）光（２）氷（３）ホコリ（４）夏（５）扇風機<br>
<input type="radio" name="answer2" value="（１）">（１）<br>
<input type="radio" name="answer2" value="（２）">（２）<br>
<input type="radio" name="answer2" value="（３）">（３）<br>
<input type="radio" name="answer2" value="（４）">（４）<br>
<input type="radio" name="answer2" value="（５）">（５）<br>
</p>

<p><b>(3)□：長袖 ＝熟考：浅慮</b><br>
（１）ズボン（２）制服（３）手袋（４）半袖（５）裸<br>
<input type="radio" name="answer3" value="（１）">（１）<br>
<input type="radio" name="answer3" value="（２）">（２）<br>
<input type="radio" name="answer3" value="（３）">（３）<br>
<input type="radio" name="answer3" value="（４）">（４）<br>
<input type="radio" name="answer3" value="（５）">（５）<br>
</p>

<p><b>(4) ストーブ：クーラー＝□：子供</b><br>
（１）空調（２）成人（３）リモコン（４）安全（５）小型<br>
<input type="radio" name="answer4" value="（１）">（１）<br>
<input type="radio" name="answer4" value="（２）">（２）<br>
<input type="radio" name="answer4" value="（３）">（３）<br>
<input type="radio" name="answer4" value="（４）">（４）<br>
<input type="radio" name="answer4" value="（５）">（５）<br>
</p>

<p><b>(5) □：音楽 ＝ゴッホ：絵画</b><br>
（１）ピカソ（２）モーツアルト（３）ユング（４）トッカータ（５）ト音記号<br>
<input type="radio" name="answer5" value="（１）">（１）<br>
<input type="radio" name="answer5" value="（２）">（２）<br>
<input type="radio" name="answer5" value="（３）">（３）<br>
<input type="radio" name="answer5" value="（４）">（４）<br>
<input type="radio" name="answer5" value="（５）">（５）<br>
</p>

<p><b>(6) □：聴診器 ＝美容師：はさみ</b><br>
（１）メス（２）くし（３）診療（４）技師（５）医者<br>
<input type="radio" name="answer6" value="（１）">（１）<br>
<input type="radio" name="answer6" value="（２）">（２）<br>
<input type="radio" name="answer6" value="（３）">（３）<br>
<input type="radio" name="answer6" value="（４）">（４）<br>
<input type="radio" name="answer6" value="（５）">（５）<br>
</p>

<p><b>(7) 上司：□＝師匠：弟子</b><br>
（１）同僚（２）子弟 （３）先輩（４）後輩（５）部下<br>
<input type="radio" name="answer7" value="（１）">（１）<br>
<input type="radio" name="answer7" value="（２）">（２）<br>
<input type="radio" name="answer7" value="（３）">（３）<br>
<input type="radio" name="answer7" value="（４）">（４）<br>
<input type="radio" name="answer7" value="（５）">（５）<br>
</p>

<p><b>(8) 紅：朱＝蒼：□</b><br>
（１）藍（２）丹（３）鈍（３）黄（４）紫（５）鈍<br>
<input type="radio" name="answer8" value="（１）">（１）<br>
<input type="radio" name="answer8" value="（２）">（２）<br>
<input type="radio" name="answer8" value="（３）">（３）<br>
<input type="radio" name="answer8" value="（４）">（４）<br>
<input type="radio" name="answer8" value="（５）">（５）<br>
</p>

<p><b>(9)自動車：□＝定規：測定</b><br>
（１）自転車（２）整備（３）移動（４）工場（５）測量<br>
<input type="radio" name="answer9" value="（１）">（１）<br>
<input type="radio" name="answer9" value="（２）">（２）<br>
<input type="radio" name="answer9" value="（３）">（３）<br>
<input type="radio" name="answer9" value="（４）">（４）<br>
<input type="radio" name="answer9" value="（５）">（５）<br>
</p>

<p><b>(10) 学校：校舍 ＝□：官舍</b><br>
（１）病院（２）大学（３）会議室（４）市役所（５）会社<br>
<input type="radio" name="answer10" value="（１）">（１）<br>
<input type="radio" name="answer10" value="（２）">（２）<br>
<input type="radio" name="answer10" value="（３）">（３）<br>
<input type="radio" name="answer10" value="（４）">（４）<br>
<input type="radio" name="answer10" value="（５）">（５）<br>
</p>

<p><b>(11)廊下：家＝本棚：□</b><br>
（１）下駄箱（２）書籍（３）図書館（４）国立（５）消防署<br>
<input type="radio" name="answer11" value="（１）">（１）<br>
<input type="radio" name="answer11" value="（２）">（２）<br>
<input type="radio" name="answer11" value="（３）">（３）<br>
<input type="radio" name="answer11" value="（４）">（４）<br>
<input type="radio" name="answer11" value="（５）">（５）<br>
</p>

<p><b>(12)病気：□＝家具：机</b><br>
（１）体調（２）精神（３）ウイルス（４）感染（５）風邪<br>
<input type="radio" name="answer12" value="（１）">（１）<br>
<input type="radio" name="answer12" value="（２）">（２）<br>
<input type="radio" name="answer12" value="（３）">（３）<br>
<input type="radio" name="answer12" value="（４）">（４）<br>
<input type="radio" name="answer12" value="（５）">（５）<br>
</p>

<p><b>(13) 猫：□＝馬：念仏</b><br>
（１）イヌ（２）手（３）無用（４）招き猫（５）小判<br>
<input type="radio" name="answer13" value="（１）">（１）<br>
<input type="radio" name="answer13" value="（２）">（２）<br>
<input type="radio" name="answer13" value="（３）">（３）<br>
<input type="radio" name="answer13" value="（４）">（４）<br>
<input type="radio" name="answer13" value="（５）">（５）<br>
</p>

<p><b>(14) □：窓 ＝木材：割りばし</b><br>
（１）家屋 （２）扉（３）ガラス（４）防犯（５）鍵<br>
<input type="radio" name="answer14" value="（１）">（１）<br>
<input type="radio" name="answer14" value="（２）">（２）<br>
<input type="radio" name="answer14" value="（３）">（３）<br>
<input type="radio" name="answer14" value="（４）">（４）<br>
<input type="radio" name="answer14" value="（５）">（５）<br>
</p>

<p><b>(15) □：書道 ＝茶碗：茶道</b><br>
（１）ひしゃく（２）竹刀（３）墨汁（４）花瓶（５）花器<br>
<input type="radio" name="answer15" value="（１）">（１）<br>
<input type="radio" name="answer15" value="（２）">（２）<br>
<input type="radio" name="answer15" value="（３）">（３）<br>
<input type="radio" name="answer15" value="（４）">（４）<br>
<input type="radio" name="answer15" value="（５）">（５）<br>
</p>

<p><b>(16) 雑誌：□＝酒：ウイスキー</b><br>
（１）文庫（２）專門書（３）新聞（４）書物（５）週刊誌<br>
<input type="radio" name="answer16" value="（１）">（１）<br>
<input type="radio" name="answer16" value="（２）">（２）<br>
<input type="radio" name="answer16" value="（３）">（３）<br>
<input type="radio" name="answer16" value="（４）">（４）<br>
<input type="radio" name="answer16" value="（５）">（５）<br>
</p>

<p><b>(17) フォーク：□＝ボールペン：鉛筆</b><br>
（１）スプーン（２）食器（３）金属（４）筆（５）マナー<br>
<input type="radio" name="answer17" value="（１）">（１）<br>
<input type="radio" name="answer17" value="（２）">（２）<br>
<input type="radio" name="answer17" value="（３）">（３）<br>
<input type="radio" name="answer17" value="（４）">（４）<br>
<input type="radio" name="answer17" value="（５）">（５）<br>
</p>

<p><b>(18)塾：勉強 ＝レストラン：□</b><br>
（１）自習（２）コック（３）食事（４）ウェイトレス（５）チェーン店<br>
<input type="radio" name="answer18" value="（１）">（１）<br>
<input type="radio" name="answer18" value="（２）">（２）<br>
<input type="radio" name="answer18" value="（３）">（３）<br>
<input type="radio" name="answer18" value="（４）">（４）<br>
<input type="radio" name="answer18" value="（５）">（５）<br>
</p>

<p><b>(19) 花瓶：切り花 ＝虫かご：□</b><br>
（１）牢屋（２）キュウリ（３）虫取り網（４）生け花（５）スズムシ<br>
<input type="radio" name="answer19" value="（１）">（１）<br>
<input type="radio" name="answer19" value="（２）">（２）<br>
<input type="radio" name="answer19" value="（３）">（３）<br>
<input type="radio" name="answer19" value="（４）">（４）<br>
<input type="radio" name="answer19" value="（５）">（５）<br>
</p>

<p><b>(20)□：穀物 ＝カラス：烏</b><br>
（１）雑穀（２）宝石（３）魚（４）麦（５）肉<br>
<input type="radio" name="answer20" value="（１）">（１）<br>
<input type="radio" name="answer20" value="（２）">（２）<br>
<input type="radio" name="answer20" value="（３）">（３）<br>
<input type="radio" name="answer20" value="（４）">（４）<br>
<input type="radio" name="answer20" value="（５）">（５）<br>
</p>

<p><b>(21) □：神社 ＝門：家屋</b><br>
（１）鳥居（２）ドア（３）寺院（４）神輿（５）賽錢箱<br>
<input type="radio" name="answer21" value="（１）">（１）<br>
<input type="radio" name="answer21" value="（２）">（２）<br>
<input type="radio" name="answer21" value="（３）">（３）<br>
<input type="radio" name="answer21" value="（４）">（４）<br>
<input type="radio" name="answer21" value="（５）">（５）<br>
</p>

<p><b>(22)橋：□＝陸橋：道路</b><br>
（１）川（２）鉄橋（３）堤防（４）海（５）山<br>
<input type="radio" name="answer22" value="（１）">（１）<br>
<input type="radio" name="answer22" value="（２）">（２）<br>
<input type="radio" name="answer22" value="（３）">（３）<br>
<input type="radio" name="answer22" value="（４）">（４）<br>
<input type="radio" name="answer22" value="（５）">（５）<br>
</p>

<p><b>(23)ブックエンド：本＝クリップ：□</b><br>
（１）書類（２）しおり（３）押しピン（４）山積み（５）ホッチキス<br>
<input type="radio" name="answer23" value="（１）">（１）<br>
<input type="radio" name="answer23" value="（２）">（２）<br>
<input type="radio" name="answer23" value="（３）">（３）<br>
<input type="radio" name="answer23" value="（４）">（４）<br>
<input type="radio" name="answer23" value="（５）">（５）<br>
</p>

<p><b>(24)サファイア：□＝金：貴金属</b><br>
（１）ルビー（２）青（３）宝石（４）硬度（５）裝飾品<br>
<input type="radio" name="answer24" value="（１）">（１）<br>
<input type="radio" name="answer24" value="（２）">（２）<br>
<input type="radio" name="answer24" value="（３）">（３）<br>
<input type="radio" name="answer24" value="（４）">（４）<br>
<input type="radio" name="answer24" value="（５）">（５）<br>
</p>

<p><b>(25)学校：教育＝□：行政</b><br>
（１）裁判所（２）小児科（３）教育委員会（４）司法（５）市役所<br>
<input type="radio" name="answer25" value="（１）">（１）<br>
<input type="radio" name="answer25" value="（２）">（２）<br>
<input type="radio" name="answer25" value="（３）">（３）<br>
<input type="radio" name="answer25" value="（４）">（４）<br>
<input type="radio" name="answer25" value="（５）">（５）<br>
</p>

<p><b>(26)電信柱：送電線 ＝□：針</b><br>
（１）時計（２）雨（３）放電（４）台風（５）釣り<br>
<input type="radio" name="answer26" value="（１）">（１）<br>
<input type="radio" name="answer26" value="（２）">（２）<br>
<input type="radio" name="answer26" value="（３）">（３）<br>
<input type="radio" name="answer26" value="（４）">（４）<br>
<input type="radio" name="answer26" value="（５）">（５）<br>
</p>

<p><b>(27) 飛行機：操縱 ＝船：□</b><br>
（１）操舵（２）運転（３）乗船（４）免許（５）車両<br>
<input type="radio" name="answer27" value="（１）">（１）<br>
<input type="radio" name="answer27" value="（２）">（２）<br>
<input type="radio" name="answer27" value="（３）">（３）<br>
<input type="radio" name="answer27" value="（４）">（４）<br>
<input type="radio" name="answer27" value="（５）">（５）<br>
</p>

<p><b>(28)台風：低気圧＝□：前線</b><br>
（１）夏（２）豪雨（３）天気予報（４）梅雨（５）木枯らし<br>
<input type="radio" name="answer28" value="（１）">（１）<br>
<input type="radio" name="answer28" value="（２）">（２）<br>
<input type="radio" name="answer28" value="（３）">（３）<br>
<input type="radio" name="answer28" value="（４）">（４）<br>
<input type="radio" name="answer28" value="（５）">（５）<br>
</p>

<p><b>(29) 梅雨：かさ ＝□：手袋</b><br>
（１）冬（２）雨合羽（３）雪（４）自動車（５）毛糸<br>
<input type="radio" name="answer29" value="（１）">（１）<br>
<input type="radio" name="answer29" value="（２）">（２）<br>
<input type="radio" name="answer29" value="（３）">（３）<br>
<input type="radio" name="answer29" value="（４）">（４）<br>
<input type="radio" name="answer29" value="（５）">（５）<br>
</p>

<p><b>(30)せんべい：クッキー＝煎茶：□</b><br>
（１）緑茶（２）休憩（３）お茶請け（４）茶葉（５）紅茶<br>
<input type="radio" name="answer30" value="（１）">（１）<br>
<input type="radio" name="answer30" value="（２）">（２）<br>
<input type="radio" name="answer30" value="（３）">（３）<br>
<input type="radio" name="answer30" value="（４）">（４）<br>
<input type="radio" name="answer30" value="（５）">（５）<br>
</p>

<p><b>(31) □：農業 ＝森林：林業</b><br>
（１）山岳（２）漁業（３）田畑（４）海洋（５）田植え<br>
<input type="radio" name="answer31" value="（１）">（１）<br>
<input type="radio" name="answer31" value="（２）">（２）<br>
<input type="radio" name="answer31" value="（３）">（３）<br>
<input type="radio" name="answer31" value="（４）">（４）<br>
<input type="radio" name="answer31" value="（５）">（５）<br>
</p>

<p><b>(32)令息：愚息＝□：弊社</b><br>
（１）令孃（２）社長（３）貴社（４）大企業（５）蒙昧<br>
<input type="radio" name="answer32" value="（１）">（１）<br>
<input type="radio" name="answer32" value="（２）">（２）<br>
<input type="radio" name="answer32" value="（３）">（３）<br>
<input type="radio" name="answer32" value="（４）">（４）<br>
<input type="radio" name="answer32" value="（５）">（５）<br>
</p>

<p><b>(33) タンス：衣類 ＝ゴミ箱：□</b><br>
（１）分別（２）ゴミ（３）衣替え（４）虫干し（５）回収<br>
<input type="radio" name="answer33" value="（１）">（１）<br>
<input type="radio" name="answer33" value="（２）">（２）<br>
<input type="radio" name="answer33" value="（３）">（３）<br>
<input type="radio" name="answer33" value="（４）">（４）<br>
<input type="radio" name="answer33" value="（５）">（５）<br>
</p>

<p><b>(34)台所：□＝居間：くつろぎ</b><br>
（１）個室（２）カウンター（３）料理（４）かまど（５）裁縫<br>
<input type="radio" name="answer34" value="（１）">（１）<br>
<input type="radio" name="answer34" value="（２）">（２）<br>
<input type="radio" name="answer34" value="（３）">（３）<br>
<input type="radio" name="answer34" value="（４）">（４）<br>
<input type="radio" name="answer34" value="（５）">（５）<br>
</p>

<p><b>(35)砂糖：醤油 ＝しゃもじ：□</b><br>
（１）ごはん（２）包丁（３）塩（４）味噌（５）さしすせそ<br>
<input type="radio" name="answer35" value="（１）">（１）<br>
<input type="radio" name="answer35" value="（２）">（２）<br>
<input type="radio" name="answer35" value="（３）">（３）<br>
<input type="radio" name="answer35" value="（４）">（４）<br>
<input type="radio" name="answer35" value="（５）">（５）<br>
</p>

<p><b>(36)カメ：□＝カツオ：トビウオ</b><br>
（１）イオリ（２）ウツボ（３）ペンギン（４）トカゲ（５）コイ<br>
<input type="radio" name="answer36" value="（１）">（１）<br>
<input type="radio" name="answer36" value="（２）">（２）<br>
<input type="radio" name="answer36" value="（３）">（３）<br>
<input type="radio" name="answer36" value="（４）">（４）<br>
<input type="radio" name="answer36" value="（５）">（５）<br>
</p>

<p><b>(37)病気：□＝損傷：修理</b><br>
（１）けが（２）治癒（３）治療（４）根絶（５）解消<br>
<input type="radio" name="answer37" value="（１）">（１）<br>
<input type="radio" name="answer37" value="（２）">（２）<br>
<input type="radio" name="answer37" value="（３）">（３）<br>
<input type="radio" name="answer37" value="（４）">（４）<br>
<input type="radio" name="answer37" value="（５）">（５）<br>
</p>

<p><b>(38)ソファ：椅子＝カーペット：□</b><br>
（１）床（２）床の間（３）テーブル（４）文机（５）畳<br>
<input type="radio" name="answer38" value="（１）">（１）<br>
<input type="radio" name="answer38" value="（２）">（２）<br>
<input type="radio" name="answer38" value="（３）">（３）<br>
<input type="radio" name="answer38" value="（４）">（４）<br>
<input type="radio" name="answer38" value="（５）">（５）<br>
</p>

<p><b>(39)□：平和 ＝発生：消滅</b><br>
（１）戦争（２）努力（３）誠実（４）平穏（５）騒音<br>
<input type="radio" name="answer39" value="（１）">（１）<br>
<input type="radio" name="answer39" value="（２）">（２）<br>
<input type="radio" name="answer39" value="（３）">（３）<br>
<input type="radio" name="answer39" value="（４）">（４）<br>
<input type="radio" name="answer39" value="（５）">（５）<br>
</p>

<p><b>(40)教会：神父 ＝神社：□</b><br>
（１）参拝（２）住職（３）神主（４）寺院（５）神殿<br>
<input type="radio" name="answer40" value="（１）">（１）<br>
<input type="radio" name="answer40" value="（２）">（２）<br>
<input type="radio" name="answer40" value="（３）">（３）<br>
<input type="radio" name="answer40" value="（４）">（４）<br>
<input type="radio" name="answer40" value="（５）">（５）<br>
</p>

<br>
<p><b>これでテスト３は終わりです。</b></p><br>

<button type="submit" class="btn btn-success" name="action" value="Test3_submit">送信</button>
<br><br>
</form>
</div>
</body>
</html>