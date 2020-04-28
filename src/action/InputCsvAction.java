package action;


import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class InputCsvAction {
	/**
	 * 解答データを読み込む
	 * @param number
	 * @return
	 */
	public List<String> getAnswer(){
		FileInputStream fi = null;
		InputStreamReader is = null;
		BufferedReader br = null;

		List<String> AnswerData = new ArrayList<>();

		try {
			//csvファイルの取得
			fi = new FileInputStream("C:\\Test\\AnswerData.csv");
		    is = new InputStreamReader(fi,"Shift-JIS");
		    br = new BufferedReader(is);

		    String LineData; //行のデータ
		    int line=1; //行数
		    String[] data = null; //取得データを一時保管

		    while((LineData = br.readLine()) != null) {
		    	if(line == 3) {
		    		data = LineData.split(",");
		    	}
		    	else {
		    		line++;
		    	}
		    }
		    for(int i=0;i<data.length;i++) {
		    	AnswerData.add(data[i]);
		    }

		}catch (Exception e) {
		    e.printStackTrace();
		} finally {
		    try {
		      br.close();
		    } catch (Exception e) {
		      e.printStackTrace();
		    }
		}
		return AnswerData;
	}

	/**
	 * 粗点から換算点に変換する
	 * @param score
	 * @return
	 */
	public int getConvertScore(int score, String type) {
		FileInputStream fi = null;
		InputStreamReader is = null;
		BufferedReader br = null;

		int convertScore = 0;

		try {
			//csvファイルの取得
			fi = new FileInputStream("C:\\Test\\ConvertScore.csv");
		    is = new InputStreamReader(fi,"Shift-JIS");
		    br = new BufferedReader(is);

		    String LineData; //行のデータ
		    int line=1; //行数
		    String[] data = null; //取得データを一時保管

		    //csvファイル中で参照する列の番号
		    int column = 0;
    		if(type.equals("lang") || type.equals("math")) {
    			column = 0;
    		}
    		else if(type.equals("answer")) {
    			column = 3;
    		}
    		else if(type.equals("correct")) {
    			column = 6;
    		}

		    while((LineData = br.readLine()) != null) {
		    	data = LineData.split(",");
		    	if(line > 2) {
		    		if(score == Integer.parseInt(data[column])) {
	    				convertScore = Integer.parseInt(data[column+1]);
	    				break;
	    			}
		    	}
		    	line++;
		    }

		}catch (Exception e) {
		    e.printStackTrace();
		} finally {
		    try {
		      br.close();
		    } catch (Exception e) {
		      e.printStackTrace();
		    }
		}
		return convertScore;
	}

}
