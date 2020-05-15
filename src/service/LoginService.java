package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class LoginService {

	public static Map<String, Object> service(String loginId) throws SQLException{
		Connection connection = null;
        Statement statement = null;
		ResultSet rs = null;
		String sql =null;
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
        return loginInfo;
	}
}