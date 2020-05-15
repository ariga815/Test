package action;

import java.sql.SQLException;
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
}
