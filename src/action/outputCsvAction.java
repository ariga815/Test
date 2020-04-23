package action;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class outputCsvAction {
	public void outCsv(HttpServletRequest request) {

		Map<String,String> meMap = (Map<String, String>) request.getAttribute("meMap");
		Map<String, List<String>> testMap = (Map<String, List<String>>) request.getAttribute("testMap");

		try {
			// 出力ファイルの作成
			FileOutputStream fos = new FileOutputStream("C:\\sample\\TestResult.csv",false);
        	OutputStreamWriter osw = new OutputStreamWriter(fos, Charset.forName("Shift_JIS"));
        	PrintWriter pw = new PrintWriter(osw);

        	pw.print(",,,,,,テスト１（文章把握）,,,テスト２（四則演算）,,,テスト３（言語推論）,,,テスト４（数列）");
        	pw.println(",,,言語（テスト１＋３）,,,数理（テスト２＋４）,,,総合（テスト１-４）,,,言語正答数,,数理正答数,,総合解答数,,総合正答数,, ");
        	pw.print("タイムスタンプ,氏名,性別,生年月日,最終学歴,現在の状態,");
        	for(int i=0;i<7;i++) {
        		pw.print("解答数,正答数,正答率,");
        	}
        	for(int j=0;j<4;j++) {
        		pw.print("粗点,換算点,");
        	}
        	pw.println("総合正答率");

        	//タイムスタンプ
        	Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    		String time = sdf.format(timestamp);
        	pw.print(time+",");

        	//名前
        	pw.print(meMap.get("name")+",");
        	//性別
        	String gender = meMap.get("gender");
        	if(gender == "man") {
        		pw.print("男,");
        	}
        	else {
        		pw.print("女,");
        	}
        	//生年月日
        	pw.print(meMap.get("birth")+",");
        	//最終学歴
        	pw.print(meMap.get("edu")+",");
        	//現在の状態
        	String status = meMap.get("status");
        	if(status == "sonota") {
        		pw.print(meMap.get("sonota")+",");
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

        	pw.close();


		} catch (IOException ex) {
            ex.printStackTrace();
        }
	}
}
