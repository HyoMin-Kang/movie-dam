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
					pstmt = conn.prepareStatement("select count(*) from article where category = 'talk'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'talk' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'talk' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'talk' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'talk' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("movietalk")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietalk'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietalk' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietalk' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietalk' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietalk' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("spoiler")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'spoiler'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'spoiler' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'spoiler' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'spoiler' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'spoiler' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("movietmi")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietmi'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietmi' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietmi' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietmi' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'movietmi' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("boast")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'boast'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'boast' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'boast' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'boast' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'boast' and article_writer LIKE '%" + search + "%'");
				}
			} else if (category.equals("hobby")) {
				if (option == null) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'hobby'");
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'hobby' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%'");
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'hobby' and article_title LIKE '%" + search + "%'");
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'hobby' and article_content LIKE '%" + search + "%'");
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement("select count(*) from article where category = 'hobby' and article_writer LIKE '%" + search + "%'");
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
					pstmt = conn.prepareStatement(sql += "where category = 'talk' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = 'talk' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = 'talk' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'talk' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'talk' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("movietalk")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = 'movietalk' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = 'movietalk' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = 'movietalk' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'movietalk' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'movietalk' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("spoiler")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = 'spoiler' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = 'spoiler' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = 'spoiler' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'spoiler' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'spoiler' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("movietmi")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = 'movietmi' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = 'movietmi' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = 'movietmi' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'movietmi' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'movietmi' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("boast")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = 'boast' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = 'boast' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = 'boast' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'boast' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'boast' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				}
			} else if (category.equals("hobby")) {
				if (option == null) {
					pstmt = conn.prepareStatement(sql += "where category = 'hobby' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("all")) {
					pstmt = conn.prepareStatement(sql += "where category = 'hobby' and article_title LIKE '%" + search + "%' or article_content LIKE '%" + search + "%' or article_writer LIKE '%" + search + "%' order by article_id desc limit ?,?");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_title")) {
					pstmt = conn.prepareStatement(sql += "where category = 'hobby' and article_title LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_content")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'hobby' and article_content LIKE '%" + search + "%' order by article_id desc limit ?,? ");
					pstmt.setInt(1, start - 1);
					pstmt.setInt(2, end);
				} else if (option.equals("article_writer")) {
					pstmt = conn.prepareStatement(
							sql += "where category = 'hobby' and article_writer LIKE '%" + search + "%' order by article_id desc limit ?,? ");
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
	
	//글 수정처리에서 사용(update문)<=updatePro.jsp에서 사용
	public int updateArticle(ArticleDataBean article,String mem_nickname) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String dbuserid = "";
		String sql = "";
		int x = -1;
		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select article_writer from article where article_id = ?");
			pstmt.setInt(1, article.getArticle_id());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dbuserid = rs.getString("article_writer");
				if (dbuserid.equals(mem_nickname)) {
					sql = "update article set article_content=?,article_title=?,category=?,article_file=? where article_id =?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, article.getArticle_content());
					pstmt.setString(2, article.getArticle_title());
					pstmt.setString(3, article.getCategory());
					pstmt.setString(4, article.getArticle_file());
					pstmt.setInt(5, article.getArticle_id());
					pstmt.executeUpdate();
					x = 1;
				} else {
					x = 0;
				}
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
	
	// 글삭제처리시 사용(delete문)<=deletePro.jsp페이지에서 사용
	public int deleteArticle(int article_id, String mem_nickname) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbuserid = "";
		int x = -1;
		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select article_writer from article where article_id = ?");
			pstmt.setInt(1, article_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbuserid = rs.getString("article_writer");
				if (dbuserid.equals(mem_nickname)) {
					pstmt = conn.prepareStatement("delete from article where article_id=?");
					pstmt.setInt(1, article_id);
					pstmt.executeUpdate();
					x = 1;
				} else {
					x = 0;
				}
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
	
	public void insertLike(ArticlelikeDataBean like) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			
			conn = getConnection();
			sql = "insert into article_like values(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, like.getArticle_like_id());
			pstmt.setInt(2, like.getBoard_id());
			pstmt.setInt(3, like.getArticle_id());
			pstmt.setString(4, like.getMem_id());
			pstmt.setInt(5, like.getLike_type());
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

	public int updateLike(ArticlelikeDataBean like) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			conn = getConnection();
			sql = "update articlelike set like_type = 0 where article_like_id= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, like.getArticle_like_id());
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
		return -1;
	}

	public int getlikeCount(String Mem_id, int Article_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";

		int x = 0;
		try {
			conn = getConnection();

			sql = "select count(*) from article_like where mem_id=? and article_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Mem_id);
			pstmt.setInt(2, Article_id);
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

	public void deletelike(int board_id, int article_id, String mem_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from article_like where mem_id=? and board_id=? and article_id=?");
			pstmt.setString(1, mem_id);
			pstmt.setInt(2, board_id);
			pstmt.setInt(3, article_id);
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