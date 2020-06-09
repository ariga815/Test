package action;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

public class FormAction {

	private String name;
	private String gender;
	private String birth;
	private String edu;
	private String status;
	private String sonota;

	public Map<String,Object> set(HttpServletRequest request) {

		Map<String,Object> lineData = new HashMap<String,Object>();

		name = request.getParameter("name");
		gender = request.getParameter("gender");
		birth = request.getParameter("birth");
		edu = request.getParameter("edu");
		status = request.getParameter("status");
		sonota = request.getParameter("sonota");

		lineData.put("name",name);
		lineData.put("gender", gender);
		lineData.put("birth", birth);
		lineData.put("edu", edu);
		lineData.put("status", status);
		lineData.put("sonota", sonota);
		lineData.put("lineStr", name+","+gender+","+birth+","+edu+","+status+","+sonota);

		return lineData;
	}

	public Map<String,String> vali() {

		Map<String,String> meMap = new HashMap<String,String>();

		if(name==null || name =="") {
			meMap.put("nameMe","氏名を入力してください。");
		}
		if(this.kigou(name)) {
			meMap.put("nameMe","半角記号は使用できません。");
		}


		if(gender==null || gender =="") {
			meMap.put("genderMe","性別を選択してください。");
		}

		if(birth==null || birth =="") {
			meMap.put("birthMe","生年月日を入力してください。");
		}

		if(edu==null || edu =="") {
			meMap.put("eduMe","最終学歴を入力してください。");
		}
		if(this.kigou(edu)) {
			meMap.put("eduMe","半角記号は使用できません。");
		}

		if(status==null || status =="") {
			meMap.put("statusMe","現在の状態を選択してください。");
		}else if(status.equals("sonota")) {
			if(sonota==null || sonota=="") {
				meMap.put("statusMe","その他を選択した場合は詳細を入力してください。");
			}else if(this.kigou(sonota)) {
				meMap.put("statusMe","半角記号は使用できません。");
			}
		}

		return meMap;
	}

	// 記号が存在するかチェック（存在したらtrue）
	public boolean kigou(String str) {

		String kigou = "[ -/:-@\\[-\\`\\{-\\~]";

		Pattern pattern = Pattern.compile(kigou);
		Matcher matcher = pattern.matcher(str);

		if(matcher.find()) {
			return true;
		}

		return false;
	}

}
