package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginInfoService {

	public static String service(String loginId, String nowPass, String newPass, String auth, String changeflg) throws SQLException{
		Connection connection = null;
        Statement statement = null;
		ResultSet rs = null;
		String sql =null;
		String err = null;
		Map<String, Object> loginInfo = new HashMap<String, Object>();

        try {
        	// JDBCドライバのロード
            String drv = "com.mysql.jdbc.Driver";
            Class.forName(drv);
            // 接続
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/isaTest","root","root");
            statement = connection.createStatement();

            // SQL を実行
            sql = "SELECT * FROM login_info WHERE login_id = '" + loginId + "' AND delete_div ='0'";
			rs = statement.executeQuery(sql);

            while(rs.next()){
            	loginInfo.put("loginId",rs.getString("login_id"));
            	loginInfo.put("loginPass",rs.getString("login_pass"));
            	loginInfo.put("loginFlg",rs.getString("login_flg"));
            }
            // ログイン情報新規作成の場合
            if(changeflg.equals("0")){
				if(loginInfo==null || loginInfo.isEmpty()){
					sql = "insert into login_info values('" + loginId + "','" + newPass + "','" + auth +"','0',now(),now())";
		            statement.executeUpdate(sql);
				}else {
					err = "ログイン情報が存在します";
				}
			// ログイン情報変更の場合
			}else if(changeflg.equals("1")){
				if(loginInfo==null || loginInfo.isEmpty()){
					err = "ログイン情報が存在しません";
				}else {
					if(!loginInfo.get("loginPass").equals(nowPass)){
						err = "ログイン情報が存在しません";
					}
					sql = "UPDATE login_info set delete_div = '1', update_date = now() WHERE login_Id = '" + loginId + "' AND delete_div ='0'";
					statement.executeUpdate(sql);
					sql = "INSERT INTO login_info VALUES('" + loginId + "','" + newPass + "','" + auth +"','0',now(),now())";
					statement.executeUpdate(sql);
				}
			// ログイン情報削除の場合
			}else if(changeflg.equals("2")){
				sql = "UPDATE login_info set delete_div = '1', update_date = now() WHERE login_Id = '" + loginId + "' AND delete_div ='0'";
				statement.executeUpdate(sql);
			}

        } catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
            System.out.println("ドライバがありません" + e.getMessage());
        } finally {
            //接続を切断する
            try {
            	if (statement != null) {
            		statement.close();
            	}
            	if (connection != null) {
            		connection.close();
            	}
            	if (rs != null) {
            		rs.close();
            	}
			} catch (SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
        }
        return err;
	}

	public static List<Map<String, Object>> service() throws SQLException{
		Connection connection = null;
        Statement statement = null;
		ResultSet rs = null;
		String sql =null;
		Map<String, Object> loginInfo = new HashMap<String, Object>();
		List<Map<String, Object>> loginInfoList = new ArrayList<Map<String, Object>>();

        try {
        	// JDBCドライバのロード
            String drv = "com.mysql.jdbc.Driver";
            Class.forName(drv);
            // 接続
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/isaTest","root","root");
            statement = connection.createStatement();

            // SQL を実行
            sql = "SELECT * FROM login_info WHERE delete_div ='0'";
			rs = statement.executeQuery(sql);

            while(rs.next()){
            	loginInfo = new HashMap<String, Object>();
            	loginInfo.put("loginId",rs.getString("login_id"));
            	if(rs.getString("login_flg").equals("1")){
            		loginInfo.put("loginFlg","管理者");
            	} else {
            		loginInfo.put("loginFlg","受験者");
            	}

            	loginInfoList.add(loginInfo);
            }
        } catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
            System.out.println("ドライバがありません" + e.getMessage());
        } finally {
            //接続を切断する
            try {
            	if (statement != null) {
            		statement.close();
            	}
            	if (connection != null) {
            		connection.close();
            	}
            	if (rs != null) {
            		rs.close();
            	}
			} catch (SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
        }
		return loginInfoList;
	}
}