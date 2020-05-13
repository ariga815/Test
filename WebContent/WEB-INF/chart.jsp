<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<% Map<String,Object> examineeInfo = (Map<String,Object>)request.getAttribute("ExamineeInfo"); %>
<html lang="ja">
<style>
.table1, .table2, .table3, .table4, .table11, .table6, .table7 {
  border-collapse: collapse;
}
.table1 th, .table1 td, .table3 th, .table4 th, .table4 td, .table7 th {
  border: 1px solid gray;
  text-align: center;
}
.table11 th, .table11 td{
  border: 1px solid gray;
  font-size: xx-small;
}
.table1 th, .table4 th, .table7 th, .table11 th {
  background-color: #F2F2F2;
  font-size: x-small;
}
.table2 th, .table6 th {
  background-color: gray;
  text-align: center;
  font-size: x-small;
  }
 .td-css {
  border: 1px solid black;
  border-style:none;
  }
.no-gutters {
    margin-right: 0;
    margin-left: 0;
    .col,
  > [class*="col-"] {
    padding-right: 0;
    padding-left: 0;
  }
 .row-eq-height {
    display: flex;
    flex-wrap: wrap;
  }
</style>
<script type="text/javascript">
function printWeb() {
    print();
}
</script>
<head>
<jsp:include page="common2.jsp" flush="true" />
<style type="text/css" media="print">
	.noprint {display: none;}
    @page {
        size: A4 landscape;
        margin: 0;
    }
</style>
<title>診断表</title>
</head>
<body>

<div class="container">
<table class="table3" width="100%" style="table-layout: auto;">
<tr>
<th>診断表</th>
</tr>
</table>

<div class="row no-gutters row-eq-height">
<div class="col-lg-8">
<table class="table1" width="100%" style="table-layout: auto;">
<tr>
<th>氏名</th><td><%=examineeInfo.get("name")%></td>
<th>受験日</th><td><%=examineeInfo.get("date")%></td>
<th>最終学歴</th><td><%=examineeInfo.get("edu")%></td>
</tr>
</table>
<table class="table1" width="100%" style="table-layout: auto;">
<tr>
<th>性別</th><td><%=examineeInfo.get("gender")%></td>
<th>生年月日</th><td><%=examineeInfo.get("birth")%></td>
<th>年齢</th><td><%=examineeInfo.get("age")%></td>
</tr>
</table>
<br>
<table class="table2" style="color:#ffffff" width="100%" style="table-layout: auto;">
</tbody><tr><th>総合診断</th></tr>
</table>
<table class="table4" width="100%" style="table-layout: auto;">
<tr><th rowspan="2">全体正答数<br>（全１６０問）</th><th>正答数</th><th>換算点</th><th rowspan="4">全体正答率</th><th rowspan="2">正答率</th><th rowspan="2">評価</th></tr>
<tr><td><%=examineeInfo.get("correctNumTotal")%></td><td><%=examineeInfo.get("conScoreCor")%></td></tr>
<tr><th rowspan="2">全体解答数<br>（全１６０問）</th><th>解答数</th><th>換算点</th><td rowspan="2"><%=examineeInfo.get("correctRate")%></td><td rowspan="2"><%=examineeInfo.get("eval")%></td></tr>
<tr><td><%=examineeInfo.get("answersNumTotal")%></td><td><%=examineeInfo.get("conScoreAns")%></td></tr>
</table>
<br>
<table class="table2" style="color:#ffffff" width="100%" style="table-layout: auto;">
<tr><th>個別能力測定</th></tr>
</table>
<table class="table11" width="100%" style="table-layout: auto;">
<tr><td align="center">診断項目</td><td align="center">診断内容</td><td align="center">解答数</td><td align="center">正解数</td><td align="center">正答率</td><td align="center">換算点</td></tr>
<tr><td align="center">言語<br>テスト１＋３</td><td>言語的思考を進める為の学習力があるかどうか</td><td align="center"><%=examineeInfo.get("answersNumLang")%></td><td align="center"><%=examineeInfo.get("correctNumLang")%></td><td align="center"><%=examineeInfo.get("correctRateLang")%></td><td align="center"><%=examineeInfo.get("conScoreLang")%></td></tr>
<tr><td align="center">数理<br>テスト２＋４</td><td>数理的、記号的思考を進めるための基礎学力があるかどうか</td><td align="center"><%=examineeInfo.get("answersNumMath")%></td><td align="center"><%=examineeInfo.get("correctNumMath")%></td><td align="center"><%=examineeInfo.get("correctRateMath")%></td><td align="center"><%=examineeInfo.get("conScoreMath")%></td></tr>
<tr><td align="center">テスト１<br>（文章把握）</td><td>接続詞や言葉の言い回しから文章を理解できるかどうか</td><td align="center"><%=examineeInfo.get("answersNum1")%></td><td align="center"><%=examineeInfo.get("correctNum1")%></td><td align="center"><%=examineeInfo.get("correctRate1")%></td><td align="center">-</td></tr>
<tr><td align="center">テスト2<br>（四則演算）</td><td>基礎的な計算ができるか</td><td align="center"><%=examineeInfo.get("answersNum2")%></td><td align="center"><%=examineeInfo.get("correctNum2")%></td><td align="center"><%=examineeInfo.get("correctRate2")%></td><td align="center">-</td></tr>
<tr><td align="center">テスト3<br>（言語推論）</td><td>複数の言葉が持つ関係性を推測できるかどうか、語彙が豊富かどうか</td><td align="center"><%=examineeInfo.get("answersNum3")%></td><td align="center"><%=examineeInfo.get("correctNum3")%></td><td align="center"><%=examineeInfo.get("correctRate3")%></td><td align="center">-</td></tr>
<tr><td align="center">テスト4<br>（数列）</td><td>数を用いた一定のルールを見つけることができるかどうか</td><td align="center"><%=examineeInfo.get("answersNum4")%></td><td align="center"><%=examineeInfo.get("correctNum4")%></td><td align="center"><%=examineeInfo.get("correctRate4")%></td><td align="center">-</td></tr>
</table>
<br>
<table class="table11" width="100%" style="table-layout: auto;">
<tr><th colspan="3">■評価Ⅰ　基礎能力（言語・数理）の特徴</th><th colspan="3">■評価Ⅱ　解答の量と正確さ</th></tr>
<tr><td>&nbsp&nbsp1&nbsp&nbsp<br>&nbsp</td><td>基礎能力が高い</td><td>偏りはなく同室集団の中では基礎能力は高い</td><td>&nbsp&nbsp1&nbsp&nbsp<br>&nbsp</td><td>速くて正確</td><td>解答量も多く、解答した内容も正確で、能力は高い</td></tr>
<tr><td>&nbsp&nbsp2&nbsp&nbsp<br>&nbsp</td><td>標準</td><td>能力は標準で、特に偏りもない</td><td>&nbsp&nbsp2&nbsp&nbsp<br>&nbsp</td><td>標準</td><td>解答量、正答率ともに標準で、目立った特徴はない</td></tr>
<tr><td>&nbsp&nbsp3&nbsp&nbsp<br>&nbsp</td><td>基礎能力が低い</td><td>全体的に正答数が少なく、基礎能力は平均的に低い</td><td>&nbsp&nbsp3&nbsp&nbsp<br>&nbsp</td><td>遅くて不正確</td><td>全体的に解答量は少ない、またその正答率も低い</td></tr>
<tr><td>&nbsp&nbsp4&nbsp&nbsp<br>&nbsp</td><td>数理的素養に長ける</td><td>数、論理を扱う能力が偏って高い</td><td>&nbsp&nbsp4&nbsp&nbsp<br>&nbsp</td><td>遅いが正確</td><td>一つ一つの解答は遅いが正確である</td></tr>
<tr><td>&nbsp&nbsp5&nbsp&nbsp<br>&nbsp</td><td>言語要素に長ける</td><td>言語を扱う基礎能力が偏って高い</td><td>&nbsp&nbsp5&nbsp&nbsp<br>&nbsp</td><td>不正確だが速い</td><td>解答に間違いは散見されるが、解答量は多い</td></tr>
</table>
<br>
</div>
<div class="col-lg-4" class="example">
<div  style="position:absolute; top:40px; text-align:left;  width:100%; height:5px; font-size:8pt; color:gray;">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp数理的要素に長ける
</div>
<div style="position:absolute; top:40px;  text-align:right;  width:100%;  height:5px; font-size:8pt; color:gray;">
基礎能力が高い&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</div>
<div style="position:absolute; top:290px; text-align:left;  width:100%;  height:5px; font-size:8pt; color:gray;">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp基礎能力が低い
</div>
<div style="position:absolute; top:290px; text-align:right;  width:100%;  height:5px; font-size:8pt; color:gray;">
言語的能力に長ける
</div>
<div style="position:absolute; top:165px; text-align:center;  width:100%;  height:5px; font-size:8pt; color:gray;">
標準
</div>
<div style="position:absolute; top:365px; text-align:left;  width:100%;  height:5px; font-size:8pt; color:gray;">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp遅いが正確
</div>
<div style="position:absolute; top:365px; text-align:right;  width:100%;  height:5px; font-size:8pt; color:gray;">
速くて正確&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</div>
<div style="position:absolute; top:615px; text-align:left;  width:100%;  height:5px; font-size:8pt; color:gray;">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp遅くて不正確
</div>
<div style="position:absolute; top:615px; text-align:right;  width:100%;  height:5px; font-size:8pt; color:gray;">
不正確だが速い&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</div>
<div style="position:absolute; top:490px; text-align:center;  width:100%;  height:5px; font-size:8pt; color:gray;">
標準
</div>

<table class="table6" style="color:#ffffff" width="100%" style="table-layout: auto;">
<tr><th>能力評価票</th><tr>
</table >
<table class="table7" width="100%" style="table-layout: auto;">
<tr><th>■評価Ⅰ　基礎能力（言語・数理）の特徴</th><tr>
</table>
  <canvas id="myLineChart"></canvas>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>

  <script>
  var ctx = document.getElementById('myLineChart').getContext('2d');
  ctx.canvas.height = 1;
  ctx.canvas.width = 1;
  var myLineChart = new Chart(ctx, {
    type: 'scatter',
    data: {
      datasets: [
        {
          data: [{x:<%=examineeInfo.get("conScoreLang")%>, y:<%=examineeInfo.get("conScoreMath")%>}],
          borderColor: "rgba(0,0,255,1)",
          backgroundColor: "rgba(0,0,255,1)"
        }
      ],
    },
    options: {
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
          ticks: {
            suggestedMax: 80,
            suggestedMin: 20,
            stepSize: 20,
            callback: function(value, index, values){
              return  value
            }
          }
        }],
        yAxes: [{
          ticks: {
            suggestedMax: 80,
            suggestedMin: 20,
            stepSize: 20,
            callback: function(value, index, values){
              return  value
            }
          }
        }]
      },
    }
  });
  </script>
<table class="table7" width="100%" style="table-layout: auto;">
<tr><th>■評価Ⅱ　解答の量と正確さ</th><tr>
</table>
  <canvas id="myLineChart2"></canvas>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>

  <script>
  var ctx = document.getElementById('myLineChart2').getContext('2d');
  ctx.canvas.height = 1;
  ctx.canvas.width = 1;
  var myLineChart = new Chart(ctx, {
    type: 'scatter',
    data: {
      datasets: [
        {
          data: [{x:<%=examineeInfo.get("conScoreAns")%>, y:<%=examineeInfo.get("correctRateNum")%>}],
          borderColor: "rgba(0,0,255,1)",
          backgroundColor: "rgba(0,0,255,1)"
        }
      ],
    },
    options: {
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
          ticks: {
            suggestedMax: 80,
            suggestedMin: 20,
            stepSize: 20,
            callback: function(value, index, values){
              return  value
            }
          }
        }],
        yAxes: [{
          ticks: {
            suggestedMax: 100.00,
            suggestedMin: 70.00,
            stepSize: 10,
            callback: function(value, index, values){
              return  value
            }
          }
        }]
      },
    }
  });
  </script>
</div>
</div>
<form>
<button type="submit" class="btn btn-success noprint" name="action" value="examineeInfo">戻る</button>
<input type="button" class="btn btn-success noprint" value="印刷" onClick="printWeb()" onclick="printWindow()">
</form>
</div>
</body>

</html>