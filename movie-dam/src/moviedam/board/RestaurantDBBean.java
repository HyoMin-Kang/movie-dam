package moviedam.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class RestaurantDBBean {
	private static RestaurantDBBean instance = new RestaurantDBBean();
	
	public static RestaurantDBBean getInstance() {
		return instance;
	}
	
	private RestaurantDBBean() {
		
	}
	
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/miso");
		return ds.getConnection();
	}
	
	public void insertArticle(RestaurantDataBean article) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into restaurant values(?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article.getArticle_id());
			pstmt.setString(2, article.getArticle_writer());
			pstmt.setString(3, article.getArticle_title());
			pstmt.setString(4, article.getArticle_content());
			pstmt.setTimestamp(5, article.getReg_date());
			pstmt.setInt(6, article.getArticle_hits());
			pstmt.setInt(7, article.getArticle_gets());
			pstmt.setString(8, article.getArticle_file());
			pstmt.setString(9, article.getSearch_loc());
			
			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	}
}
