package loginSql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/*
 * ログイン時のIDとパスワードがDBに存在するのか確認する処理
 */
public class LoginSql{
    // ドライバーのクラス名
    private static final String POSTGRES_DRIVER = "org.postgresql.Driver";
    // JDMC接続先情報
    private static final String JDBC_CONNECTION = "jdbc:postgresql://localhost:5432/データベース名";
    // ユーザー名
    private static final String USER = "ユーザー名";
    // パスワード
    private static final String PASS = "パスワード";

	public String[] main(String[] items) throws ClassNotFoundException, SQLException {
		
		// 接続先の情報を null
		Connection connection = null;
		// 問い合わせ取得結果を null
		Statement statement = null;
		// 実行結果のデータを　null
		ResultSet resultSet = null;
		
		// ステートメントの作成
	
	// データベースへ接続
		try (Connection conn = DriverManager.getConnection(JDBC_CONNECTION, USER, PASS)){
			statement = connection.createStatement();

			// SELECT文を準備
			String sql = "SELECT COUNT(ID)"
					+ " FROM "
					+ "テーブル名 "			// ここにIDとPWを管理しているテーブル名を記載
					+ " WHERE "
					+ " 1 = 1 "   			// 後々条件を追加しやすいように記載
					+ " AND "
					+ " 項目名 = ?"		 	// 受け取ってきたID値
					+ " AND "
					+ " 項目名 = ?";			// 受け取ってきたID値;

			PreparedStatement pStmt = conn.prepareStatement(sql);
//			pStmt.setString(1, login.getUserId());
//			pStmt.setString(2, login.getPass());
			
			// SELECT文を実行し、結果表を取得
			ResultSet rs = pStmt.executeQuery();
			
			if(rs.next()) {
				// ユーザーが存在したらデータを取得
				// そのユーザーを表すAccountインスタンスを生成
				String userId = rs.getString("USER_ID");
				String pass = rs.getString("PASS");
				String mail = rs.getString("MAIL");
				String name = rs.getString("NAME");
				int age = rs.getInt("AGE");
//				account = new Account(userId, pass, mail, name, age);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		// 引数で指定したSQLを実行して、実行結果を格納
//		resultSet = statement.executeQuery(SQL);
		
		// next()メソッド （次の行に移動する）で最初の行に移動する
		// while文で実行結果の情報を先頭から最後尾まで順に追う
		while (resultSet.next()) {
			// nullなら値がないのでfalse
		    String loginId = resultSet.getString("列名");
		    String loginPw = resultSet.getString("列名");
		}
		return items;
	}
}
