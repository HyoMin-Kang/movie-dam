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

public class ArticleDBBean {

	private static ArticleDBBean instance = new ArticleDBBean();

	public static ArticleDBBean getInstance() {
		return instance;
	}

	private ArticleDBBean() {
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/miso");
		return ds.getConnection();
	}

	// board테이블에 글을 추가(insert문)<=writePro.jsp페이지에서 사용
	public void insertArticle(ArticleDataBean article) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into article(article_writer,article_title,reg_date,article_content,article_hits,article_gets,article_file,category) values(?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getArticle_writer());
			pstmt.setString(2, article.getArticle_title());
			pstmt.setTimestamp(3, article.getReg_date());
			pstmt.setString(4, article.getArticle_content());
			pstmt.setInt(5, article.getArticle_hits());
			pstmt.setInt(6, article.getArticle_gets());
			pstmt.setString(7, article.getArticle_file());
			pstmt.setString(8, article.getCategory());

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

	// board테이블에 저장된 전체글의 수를 얻어냄(select문)<=list.jsp에서 사용
	public int getArticleCount(String option, String search) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int x = 0;

		try {
			conn = getConnection();

			if (option == null) {
				pstmt = conn.prepareStatement("select count(*) from article");
			} else if (option.equals("all")) {
				pstmt = conn.prepareStatement("select count(*) from article");
			} else if (option.equals("writer")) {
				pstmt = conn.prepareStatement("select count(*) from article where writer LIKE '%" + search + "%'");
			} else if (option.equals("subject")) {
				pstmt = conn.prepareStatement("select count(*) from article where subject LIKE '%" + search + "%'");
			} else if (option.equals("content")) {
				pstmt = conn.prepareStatement("select count(*) from article where content LIKE '%" + search + "%'");
			}

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

	// 글의 목록을 가져옴
	public List<ArticleDataBean> getArticles(int start, int end, String option, String search) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ArticleDataBean> articleList = null;
		try {
			conn = getConnection();
			String sql = "select * from article ";

			if (option == null) {
				pstmt = conn.prepareStatement(sql += "order by article_id desc limit ?,? ");
				pstmt.setInt(1, start - 1);
				pstmt.setInt(2, end);
			} else if (option.equals("all")) {
				pstmt = conn.prepareStatement(sql += "order by article_id desc limit ?,? ");
				pstmt.setInt(1, start - 1);
				pstmt.setInt(2, end);
			} else if (option.equals("writer")) {
				pstmt = conn.prepareStatement(
						sql += "where article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
				pstmt.setInt(1, start - 1);
				pstmt.setInt(2, end);
			} else if (option.equals("subject")) {
				pstmt = conn.prepareStatement(
						sql += "where article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
				pstmt.setInt(1, start - 1);
				pstmt.setInt(2, end);
			} else if (option.equals("content")) {
				pstmt = conn.prepareStatement(
						sql += "where article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
				pstmt.setInt(1, start - 1);
				pstmt.setInt(2, end);
			}

			rs = pstmt.executeQuery();

			if (rs.next()) {
				articleList = new ArrayList<ArticleDataBean>(end);
				do {
					ArticleDataBean article = new ArticleDataBean();
					article.setArticle_id(rs.getInt("article_id"));
					article.setArticle_writer(rs.getString("article_writer"));
					article.setArticle_title(rs.getString("article_title"));
					article.setArticle_content(rs.getString("article_content"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setArticle_hits(rs.getInt("article_hits"));
					article.setArticle_gets(rs.getInt("article_gets"));
					article.setArticle_file(rs.getString("article_file"));
					article.setCategory(rs.getString("category"));

					articleList.add(article);
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
		return articleList;
	}

	// 글의 내용을 보기(1개의 글)(select문)<=content.jsp페이지에서 사용
	public ArticleDataBean getArticle(int article_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArticleDataBean article = null;
		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("update article set article_hits=article_hits+1 where article_id = ?");
			pstmt.setInt(1, article_id);
			pstmt.executeUpdate();

			pstmt = conn.prepareStatement("select * from article where article_id = ?");
			pstmt.setInt(1, article_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				article = new ArticleDataBean();
				article.setArticle_id(rs.getInt("article_id"));
				article.setArticle_writer(rs.getString("article_writer"));
				article.setArticle_title(rs.getString("article_title"));
				article.setArticle_content(rs.getString("article_content"));
				article.setReg_date(rs.getTimestamp("reg_date"));
				article.setArticle_hits(rs.getInt("article_hits"));
				article.setArticle_gets(rs.getInt("article_gets"));
				article.setArticle_file(rs.getString("article_file"));
				article.setCategory(rs.getString("category"));
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
		return article;
	}

	// 글 수정폼에서 사용할 글의 내용(1개의 글)(select문)<=updateForm.jsp에서 사용
	public ArticleDataBean updateGetArticle(int article_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArticleDataBean article = null;
		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select * from article where article_id = ?");
			pstmt.setInt(1, article_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				article = new ArticleDataBean();
				article.setArticle_id(rs.getInt("article_id"));
				article.setArticle_writer(rs.getString("article_writer"));
				article.setArticle_title(rs.getString("article_title"));
				article.setArticle_content(rs.getString("article_content"));
				article.setReg_date(rs.getTimestamp("reg_date"));
				article.setArticle_hits(rs.getInt("article_hits"));
				article.setArticle_gets(rs.getInt("article_gets"));
				article.setArticle_file(rs.getString("article_file"));
				article.setCategory(rs.getString("category"));
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
		return article;
	}

	public int getCommentCount() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int x = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select count(*) from comment");
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

}