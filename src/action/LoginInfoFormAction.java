package action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class LoginInfoFormAction {

	private String loginId;
	private String nowPass;
	private String newPass;
	private String newPass2;
	private String auth;

	public Map<String,Object> set(HttpServletRequest request) {

		Map<String,Object> lineData = new HashMap<String,Object>();

		loginId = request.getParameter("loginId");
		nowPass = request.getParameter("nowPass");
		newPass = request.getParameter("newPass");
		newPass2 = request.getParameter("newPass2");
		auth = request.getParameter("auth");

		lineData.put("loginId",loginId);
		lineData.put("nowPass", nowPass);
		lineData.put("newPass", newPass);
		lineData.put("newPass2", newPass2);
		lineData.put("auth", auth);

		return lineData;
	}

	public Map<String,String> vali() {

		Map<String,String> meMap = new HashMap<String,String>();
		String str = "0";

		if(loginId==null || loginId =="") {
			meMap.put("loginIdMe","ログインIDを入力してください。");
		}

		if(nowPass==null || nowPass =="") {
			meMap.put("nowPassMe","現在のパスワードを入力してください。");
		}

		if(newPass==null || newPass =="") {
			meMap.put("newPassMe","新しいパスワードを入力してください。");
			str = "1";
		}

		if(newPass2==null || newPass2 =="") {
			meMap.put("newPass2Me","新しいパスワード（確認用）を入力してください。");
			str = "1";
		}

		if(str.equals("0") && !newPass.equals(newPass2)){
			meMap.put("newPass2Me","新しいパスワードと値が違います");
		}

		if(auth==null || auth =="") {
			meMap.put("authMe","アクセス権限を選択してください");
		}

		return meMap;
	}



}
