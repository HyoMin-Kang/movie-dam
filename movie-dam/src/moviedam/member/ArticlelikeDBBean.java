package moviedam.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import moviedam.board.ArticleDataBean;
import moviedam.board.ArticlelikeDataBean;
import moviedam.board.RestaurantLikeDataBean;
import moviedam.debate.ChanbanlikeDataBean;

public class ArticlelikeDBBean {
	
	private static ArticlelikeDBBean instance = new ArticlelikeDBBean();

	public static ArticlelikeDBBean getInstance() {
		return instance;
	}

	private ArticlelikeDBBean() {
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/miso");
		return ds.getConnection();
	}
	
	public ArrayList<ArticlelikeDataBean> getlikeArticles(String mem_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ArticlelikeDataBean> articleList = null;

		try {
			conn = getConnection();

			String sql = "select * from article_like where mem_id=? and like_type='Y' order by article_id desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				articleList = new ArrayList<ArticlelikeDataBean>();
				do {
					ArticlelikeDataBean article = new ArticlelikeDataBean();
					article.setBoard_id(rs.getInt("board_id"));
					article.setArticle_id(rs.getInt("article_id"));
					article.setMem_id(rs.getString("mem_id"));
					article.setLike_type(rs.getString("like_type"));

					articleList.add(article);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
	
	public ArrayList<RestaurantLikeDataBean> getlikeRestaurants(String mem_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<RestaurantLikeDataBean> restaurantList = null;

		try {
			conn = getConnection();

			String sql = "select * from rest_like where mem_id=? and like_type='Y' order by article_id desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				restaurantList = new ArrayList<RestaurantLikeDataBean>();
				do {
					RestaurantLikeDataBean restaurant = new RestaurantLikeDataBean();
					restaurant.setBoard_id(rs.getInt("board_id"));
					restaurant.setArticle_id(rs.getInt("article_id"));
					restaurant.setMem_id(rs.getString("mem_id"));
					restaurant.setLike_type(rs.getString("like_type"));

					restaurantList.add(restaurant);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
		return restaurantList;
	}
	
	public ArrayList<ChanbanlikeDataBean> getlikeChanbans(String mem_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ChanbanlikeDataBean> chanbanList = null;

		try {
			conn = getConnection();

			String sql = "select * from chanban_like where mem_id=? and cb_like_type='Y' order by cb_id desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				chanbanList = new ArrayList<ChanbanlikeDataBean>();
				do {
					ChanbanlikeDataBean chanban = new ChanbanlikeDataBean();
					chanban.setCb_id(rs.getInt("cb_id"));
					chanban.setMem_id(rs.getString("mem_id"));
					chanban.setCb_like_type(rs.getString("cb_like_type"));
					
					chanbanList.add(chanban);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
		return chanbanList;
	}
	
	public int getArticleLikeCount(String mem_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";

		int x = 0;
		try {
			conn = getConnection();

			sql = "select count(*) from article_like where mem_id=? and like_type='Y' and board_id = 1";
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			} else {
				x = 0;
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
	
	public int getRestLikeCount(String mem_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";

		int x = 0;
		try {
			conn = getConnection();

			sql = "select count(*) from rest_like where mem_id=? and like_type='Y'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			} else {
				x = 0;
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
	
	public int getChanbanLikeCount(String mem_id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";

		int x = 0;
		try {
			conn = getConnection();

			sql = "select count(*) from chanban_like where mem_id=? and cb_like_type='Y'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			} else {
				x = 0;
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