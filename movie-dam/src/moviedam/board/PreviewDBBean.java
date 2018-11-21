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

public class PreviewDBBean {
	private static PreviewDBBean instance = new PreviewDBBean();

	public static PreviewDBBean getInstance() {
		return instance;
	}

	private PreviewDBBean() {
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/miso");
		return ds.getConnection();
	}
	
	public void insertArticle(PreviewDataBean article) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into preview values(?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article.getArticle_id());
			pstmt.setString(2, article.getArticle_title());
			pstmt.setString(3, article.getPreview_date());
			pstmt.setString(4, article.getPreview_region());
			pstmt.setTimestamp(5, article.getReg_date());
			pstmt.setString(6, article.getOriginal_url());
			pstmt.setString(7, article.getArticle_file());
			pstmt.setString(8, article.getCinema());
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
	
	public int getArticleCount() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int x = 0;

		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select count(*) from preview");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
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
		return x;
	}
	
	public List<PreviewDataBean> getArticles(int start, int end) throws Exception {
		PreparedStatement pstmt = null;
		Connection conn = null;
		ResultSet rs = null;
		List<PreviewDataBean> previewList = null;
		
		try {
			conn = getConnection();
			String sql = "select * from preview order by article_id desc limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start - 1);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				previewList = new ArrayList<PreviewDataBean>(end);
				do {
					PreviewDataBean preview = new PreviewDataBean();
					preview.setArticle_id(rs.getInt("article_id"));
					preview.setArticle_title(rs.getString("article_title"));
					preview.setPreview_date(rs.getString("preview_date"));
					preview.setPreview_region(rs.getString("preview_region"));
					preview.setReg_date(rs.getTimestamp("reg_date"));
					preview.setOriginal_url(rs.getString("original_url"));
					preview.setArticle_file(rs.getString("article_file"));
					preview.setCinema(rs.getString("cinema"));
					
					previewList.add(preview);
				} while (rs.next());
			}
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
		return previewList;
	}
}
