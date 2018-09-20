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
			sql = "insert into article values(?,?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article.getArticle_id());
			pstmt.setString(2, article.getArticle_writer());
			pstmt.setString(3, article.getArticle_title());
			pstmt.setString(4, article.getArticle_content());
			pstmt.setTimestamp(5, article.getReg_date());
			pstmt.setInt(6, article.getArticle_hits());
			pstmt.setInt(7, article.getArticle_gets());
			pstmt.setString(8, article.getArticle_file());
			pstmt.setString(9, article.getCategory());

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
	public int getArticleCount(String option, String search, String category) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int x = 0;

		try {
			conn = getConnection();
			
			if (category.equals("all")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("talk")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '사담'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '사담' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '사담' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '사담' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '사담' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("movietalk")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화후기'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화후기' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화후기' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화후기' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화후기' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("spoiler")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '스포일러'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '스포일러' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '스포일러' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '스포일러' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '스포일러' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("movietmi")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화TMI'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화TMI' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화TMI' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화TMI' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '영화TMI' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("boast")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '자랑하기'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '자랑하기' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '자랑하기' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '자랑하기' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '자랑하기' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("hobby")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '덕질공간'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '덕질공간' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '덕질공간' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '덕질공간' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = '덕질공간' and article_writer LIKE '%" + search + "%'");
				}
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
	public List<ArticleDataBean> getArticles(int start, int end, String option, String search, String category) throws Exception {
		PreparedStatement pstmt = null;
		Connection conn = null;
		ResultSet rs = null;
		List<ArticleDataBean> articleList = null;
		try {
			conn = getConnection();
			String sql = "select * from article ";
			
			if (category.equals("all")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("talk")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = '사담' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = '사담' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = '사담' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '사담' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '사담' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("movietalk")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = '영화후기' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = '영화후기' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = '영화후기' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '영화후기' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '영화후기' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("spoiler")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = '스포일러' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = '스포일러' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = '스포일러' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '스포일러' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '스포일러' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("movietmi")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = '영화TMI' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = '영화TMI' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = '영화TMI' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '영화TMI' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '영화TMI' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("boast")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = '자랑하기' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = '자랑하기' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = '자랑하기' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '자랑하기' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '자랑하기' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("hobby")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = '덕질공간' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = '덕질공간' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = '덕질공간' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '덕질공간' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = '덕질공간' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
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