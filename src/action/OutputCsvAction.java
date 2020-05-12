package action;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import constants.Constants;


public class OutputCsvAction {

	final private int TESTNUMBER = 40; //問題数

	/**
	 * 解答の出力
	 * @param Map
	 */
	public void outResultCsv(Map<String,Object> Map) {

		try {
			//フォルダの確認（ない場合は作成）
			File folder = new File(Constants.dir + "");
			if(folder.exists() == false) {
				folder.mkdir();
			}

			//出力CSVファイルの確認
			boolean existFlg;
			File file = new File(Constants.dir + "/OriginalTestResult.csv");
			if(file.exists()) {
				existFlg = true;
			}
			else {
				existFlg = false;
			}

			// 出力ファイルの作成
			FileOutputStream fos;
			if(existFlg == false) {
				fos = new FileOutputStream(Constants.dir + "/OriginalTestResult.csv",false);
			}
			else {
				fos = new FileOutputStream(Constants.dir + "/OriginalTestResult.csv",true);
			}
			OutputStreamWriter osw = new OutputStreamWriter(fos, Charset.forName("UTF-8"));
    		PrintWriter pw = new PrintWriter(osw);

    		int i;

    		if(existFlg == false) {
        		//新規作成するときのみ実行
    			for(i=0;i<7;i++) {
    				pw.print(",");
    			}
    			for(i=1;i<5;i++) {
    				if(i==1) {
    					pw.print("テスト１");
    				}
    				else if(i==2) {
    					pw.print("テスト２");
    				}
    				else if(i==3) {
    					pw.print("テスト３");
    				}
    				else if(i==4) {
    					pw.print("テスト４");
    				}
    				for(int j=0;j<40;j++) {
    					pw.print(",");
    				}
    			}
    			pw.println();

    			pw.print("受験者ID,タイムスタンプ,氏名,性別,生年月日,最終学歴,現在の状態,");
    			for(i=1;i<5;i++) {
    				for(int j=1;j<=TESTNUMBER;j++) {
    					pw.print("問"+j+",");
    				}
    			}
    			pw.println();

    			pw.print("答え");

        		for(i=0;i<7;i++) {
    				pw.print(",");
    			}

        		for(i=1;i<5;i++) {
            		//テストの答えを取得
            		List<String> answerList = getTestAnswer(i);
            		for(int j=0;j<answerList.size();j++) {
            			pw.print(answerList.get(j)+",");
            		}
            	}
        		pw.println();
        	}

    		//受験者情報出力
        	outUserData(Map,pw);

        	for(i=1;i<5;i++) {
        		List<String> testList = (List<String>) Map.get("test"+i);
        		for(int j=0;j<testList.size();j++) {
        			if(testList.get(j) != null) {
        				pw.print(testList.get(j)+",");
        			}
        			else {
        				pw.print(",");
        			}
        		}
        	}

        	pw.println();
        	pw.close();

		} catch (IOException ex) {
            ex.printStackTrace();
        }
	}

	InputCsvAction ica = new InputCsvAction();
	/**
	 * 正答率用CSVファイルの出力
	 * @param Map
	 */
	public void outRateCsv(Map<String,Object> Map) {

		try {

			//出力CSVファイルの確認
			boolean existFlg;
			File file = new File(Constants.dir + "/TestResult.csv");
			if(file.exists()) {
				existFlg = true;
			}
			else {
				existFlg = false;
			}

			// 出力ファイルの作成
			FileOutputStream fos;
			if(existFlg == false) {
				fos = new FileOutputStream(Constants.dir + "/TestResult.csv",false);
			}
			else {
				fos = new FileOutputStream(Constants.dir + "/TestResult.csv",true);
			}
			OutputStreamWriter osw = new OutputStreamWriter(fos, Charset.forName("UTF-8"));
        	PrintWriter pw = new PrintWriter(osw);

        	if(existFlg == false) {
        		//新規作成するときのみ実行
        		pw.print(",,,,,,,テスト１（文章把握）,,,テスト２（四則演算）,,,テスト３（言語推論）,,,テスト４（数列）");
        		pw.println(",,,言語（テスト１＋３）,,,数理（テスト２＋４）,,,総合（テスト１-４）,,,言語正答数,,数理正答数,,総合解答数,,総合正答数,,,受験回数");
        		pw.print("受験者ID,タイムスタンプ,氏名,性別,生年月日,最終学歴,現在の状態,");
        		for(int i=0;i<7;i++) {
        			pw.print("解答数,正答数,正答率,");
        		}
        		for(int j=0;j<4;j++) {
        			pw.print("粗点,換算点,");
        		}
        		pw.println("総合正答率,受験回数");
        	}

        	//受験者情報出力
        	outUserData(Map,pw);

        	//各テストの解答数等の出力
        	int i; //テストの番号(1～4)
        	//言語用変数
        	int langACount=0;
        	int langCCount=0;
        	double langCRate;
        	//数理用変数
        	int mathACount=0;
        	int mathCCount=0;
        	double mathCRate;

        	for(i=1;i<=4;i++) {
        		List<String> testList = (List<String>) Map.get("test"+i);

        		//テストの答えを取得
        		List<String> answerList = getTestAnswer(i);

        		List<Double> calcList = calcTest(testList,answerList);
        		double aCount = calcList.get(0); //解答数
        		double cCount = calcList.get(1); //正答数
        		double cRate =  Math.round(calcList.get(2) * 100.0); //正答率
        		pw.print((int)aCount+",");
        		pw.print((int)cCount+",");
        		pw.print((int)cRate+"%,");

        		if(i%2==1) {
        			langACount += (int)aCount;
        			langCCount += (int)cCount;
        		}
        		else {
        			mathACount += (int)aCount;
        			mathCCount += (int)cCount;
        		}
        	}

        	//言語出力
        	outTestRate(pw,langACount,langCCount);
        	//数理出力
        	outTestRate(pw,mathACount,mathCCount);
        	//総合出力
        	int totalACount = langACount + mathACount;
        	int totalCCount = langCCount + mathCCount;
        	outTestRate(pw,totalACount,totalCCount);

        	int convert = 0; //換算点
        	//言語 粗点・換算点
        	pw.print(langCCount+",");
        	convert = ica.getConvertScore(langCCount,"lang");
        	pw.print(convert+",");
        	//数理 粗点・換算点
        	pw.print(mathCCount+",");
        	convert = ica.getConvertScore(mathCCount,"math");
        	pw.print(convert+",");
        	//総合解答数 粗点・換算点
        	pw.print(totalACount+",");
        	convert = ica.getConvertScore(totalACount,"answer");
        	pw.print(convert+",");
        	//総合正答数 粗点・換算点
        	pw.print(totalCCount+",");
        	convert = ica.getConvertScore(totalCCount,"correct");
        	pw.print(convert+",");

        	//総合正答率
        	double totalCRate =Math.round(((double)totalCCount / (double)totalACount) * 100.0);
        	pw.print((int)totalCRate+"%,");

        	//受験回数
        	int TestCnt = UserDataDoubleCheck(Map);
        	pw.println(TestCnt+"回目");

        	pw.close();


		} catch (IOException ex) {
            ex.printStackTrace();
        }
	}

	/**
	 * テストの答えを取得する
	 * @param number
	 * @return
	 */
	 private List<String> getTestAnswer(int number){
		List<String> answerList = new ArrayList<>();
		List<String> allAnswerList = ica.getAnswer();

		switch(number) {
		case 1:
			for(int i=TESTNUMBER*0;i<TESTNUMBER*1;i++) {
				answerList.add(allAnswerList.get(i));
			}
			break;
		case 2:
			for(int i=TESTNUMBER*1;i<TESTNUMBER*2;i++) {
				answerList.add(allAnswerList.get(i));
			}
			break;
		case 3:
			for(int i=TESTNUMBER*2;i<TESTNUMBER*3;i++) {
				answerList.add(allAnswerList.get(i));
			}
			break;
		case 4:
			for(int i=TESTNUMBER*3;i<TESTNUMBER*4;i++) {
				answerList.add(allAnswerList.get(i));
			}
			break;
		}

		return answerList;
	}


	/**
	 * 解答数、正答数、正答率を計算
	 * @param testList
	 * @param answerList
	 * @return
	 */
	 private List<Double> calcTest(List<String> testList,List<String> answerList){
		List<Double> calcList = new ArrayList<>(); //0:解答数 1:正答数 2:正答率

		double aCount = 0; //解答数
		double cCount = 0; //正答数
		double cRate;      //正答率
		for(int i=0;i<TESTNUMBER;i++) {
			if(testList.get(i) != null) {
				aCount++;
				if(testList.get(i).equals(answerList.get(i))) {
					cCount++;
				}
			}
		}
		cRate=cCount / aCount;

		calcList.add(aCount);
		calcList.add(cCount);
		calcList.add(cRate);

		return calcList;
	}


	/**
	 * 受験者情報の出力
	 * @param Map
	 * @param pw
	 */
	 private void outUserData(Map<String,Object> Map, PrintWriter pw) {
		//タイムスタンプ
    	Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String time = sdf.format(timestamp);
		//受験者ID
    	sdf = new SimpleDateFormat("yyyyMMddHHmmss");
    	String userId = sdf.format(timestamp);

    	pw.print(userId+",");
		pw.print(time+",");

    	//名前
    	pw.print(Map.get("name")+",");
    	//性別
    	String gender = (String) Map.get("gender");
    	if(gender.contentEquals("man")) {
    		pw.print("男,");
    	}
    	else {
    		pw.print("女,");
    	}
    	//生年月日
    	pw.print(Map.get("birth")+",");
    	//最終学歴
    	pw.print(Map.get("edu")+",");
    	//現在の状態
    	String status = (String) Map.get("status");
    	if(status.equals("sonota")) {
    		pw.print((String)Map.get("sonota")+",");
    	}
    	else {
    		switch(status) {
    		case "student":
    			pw.print("在学中,");
    			break;
    		case "second":
    			pw.print("第二新卒,");
    			break;
    		case "worker":
    			pw.print("会社員,");
    			break;
    		}
    	}
	}

	/**
	 * 解答数・正答数・正答率の出力
	 * @param pw
	 * @param ACount
	 * @param CCount
	 */
	 private void outTestRate(PrintWriter pw,int ACount, int CCount) {
		pw.print(ACount+",");
    	pw.print(CCount+",");
    	double CRate =Math.round(((double)CCount / (double)ACount) * 100.0);
    	pw.print((int)CRate+"%,");
	}

	 /**
	  * @param Map
	  * 受験者情報のみCSV出力
	  */
	 public void outUserDataCsv(Map<String,Object> Map) {

		 try {
			//フォルダの確認（ない場合は作成）
			File folder = new File(Constants.dir + "");
			if(folder.exists() == false) {
				folder.mkdir();
			}

			 //出力CSVファイルの確認
			 boolean existFlg;
			 File file = new File(Constants.dir + "/UserData.csv");
			 if(file.exists()) {
				 existFlg = true;
			 }
			 else {
				 existFlg = false;
			 }

			 // 出力ファイルの作成
			 FileOutputStream fos;
			 if(existFlg == false) {
				 fos = new FileOutputStream(Constants.dir + "/UserData.csv",false);
			 }
			 else {
				 fos = new FileOutputStream(Constants.dir + "/UserData.csv",true);
			 }
			 OutputStreamWriter osw = new OutputStreamWriter(fos, Charset.forName("UTF-8"));
			 PrintWriter pw = new PrintWriter(osw);

			 if(existFlg == false) {
				 //新規作成するときのみ実行
				 pw.println("受験者ID,タイムスタンプ,氏名,性別,生年月日,最終学歴,現在の状態");
			 }

			 //受験者情報出力
			 //タイムスタンプ
			 Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			 String time = sdf.format(timestamp);
			 //受験者ID
			 sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			 String userId = sdf.format(timestamp);

			 pw.print(userId+",");
			 pw.print(time+",");

			 //名前
			 pw.print(Map.get("name")+",");
			 //性別
			 pw.print(Map.get("gender")+",");
			 //生年月日
			 pw.print(Map.get("birth")+",");
			 //最終学歴
			 pw.print(Map.get("edu")+",");
			 //現在の状態
			 String status = (String) Map.get("status");
			 if(status.equals("sonota")) {
				 pw.println((String)Map.get("sonota"));
			 }
			 else {
				 pw.println(status);
			 }
			 pw.close();

		 } catch (IOException ex) {
			 ex.printStackTrace();
	 }
}

	 /**
	  * @param Map
	  * 受験回数を計算
	  */
	 public static int UserDataDoubleCheck(Map<String,Object> Map) {

		 //ファイル読み込みで使用する３つのクラス
		 FileInputStream fi = null;
		 InputStreamReader is = null;
		 BufferedReader br = null;

		 //受験者情報ファイル読み込み用インスタンスを生成
		 Map<String,Object> TmpUserData;
		 int DoubleCnt = 0;
		 String Name = Map.get("name").toString().replace("　","").replaceAll("[¥s]","");
		 String Edu = Map.get("edu").toString().replace("　","").replaceAll("[¥s]","");

		 try {

			 //読み込みファイルのインスタンス生成
			 //ファイル名を指定する
			 fi = new FileInputStream(Constants.dir + "/UserData.csv");
			 is = new InputStreamReader(fi);
			 br = new BufferedReader(is);

			 //読み込み行
			 String line;
			 //読み込み行数の管理
			 int i = 0;

			 //1行ずつ読み込みを行う
			 while ((line = br.readLine()) != null) {
				 //先頭行は列名
				 if (i > 0) {

					 //カンマで分割した内容を配列に格納する
					 String[] data = line.split(",");

					 //氏名,性別,生年月日,最終学歴,現在の状態を退避
					 TmpUserData = new HashMap<String,Object>();
					 TmpUserData.put("name",data[2].replace("　","").replaceAll("[¥s]",""));
					 TmpUserData.put("gender",data[3]);
					 TmpUserData.put("birth",data[4]);
					 TmpUserData.put("edu",data[5].replace("　","").replaceAll("[¥s]",""));
					 TmpUserData.put("status",data[6]);

					 //重複項目数初期化
					 int ChkCnt = 0;

					 //氏名の判定
					 if(Name.equals(TmpUserData.get("name"))){
						 ChkCnt++;
					 }
					 //性別の判定
					 if(Map.get("gender").equals(TmpUserData.get("gender"))){
						 ChkCnt++;
					 }

					 //生年月日の判定
					 if(Map.get("birth").equals(TmpUserData.get("birth"))){
						 ChkCnt++;
					 }

					 //最終学歴の判定
					 if(Edu.equals(TmpUserData.get("edu"))){
						 ChkCnt++;
					 }

					 //現在の状態の判定
					 if(Map.get("status").equals(TmpUserData.get("status"))){
						 ChkCnt++;
					 }

					 //氏名,性別,生年月日,最終学歴,現在の状態がすべて重複しているか判定
					 if(ChkCnt == 5){
						 DoubleCnt++;
					 }
				 }
				 //行数のインクリメント
				 i++;

			 }

		 } catch (Exception e) {
			 e.printStackTrace();
		 } finally {
			 try {
				 if(br!=null){
					 br.close();
				 }
			 } catch (Exception e) {
				 e.printStackTrace();
			 }
		 }

		 return DoubleCnt;
	 }
}
