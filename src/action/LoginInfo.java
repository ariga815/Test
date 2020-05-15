package action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import service.LoginInfoService;

public class LoginInfo {
	public static String loginInfoChange(Map<String, Object> lineData, String changeflg) {
		String loginId = (String) lineData.get("loginId");
		String nowPass = (String) lineData.get("nowPass");
		String newPass = (String) lineData.get("newPass");
		String auth = (String) lineData.get("auth");
		String err = null;

		try {
			err = LoginInfoService.service(loginId, nowPass, newPass, auth, changeflg);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return err;
	}

	public static List<Map<String, Object>> loginInfoSelect(Map<String, Object> lineData) {
		List<Map<String, Object>> loginInfoList = new ArrayList<Map<String, Object>>();

		try {
			loginInfoList = LoginInfoService.service();

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		return loginInfoList;
	}
}
