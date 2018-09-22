package moviedam.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class QuizDBBean {
	 private static QuizDBBean instance = new QuizDBBean();
	    
	    public static QuizDBBean getInstance() { //static; 생성자없이접근가능함 
	        return instance;
	    }
	    
	    private QuizDBBean() { }
		
		private Connection getConnection() throws Exception {
		    Context initCtx = new InitialContext();
		    Context envCtx = (Context) initCtx.lookup("java:comp/env");
	        DataSource ds = (DataSource)envCtx.lookup("jdbc/miso");
		    return ds.getConnection();
		}
		
		public void insertQuiz(QuizDataBean quiz)
			              throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
				        
			try{
				conn = getConnection();
				            
				pstmt = conn.prepareStatement(
				    "insert into quiz values (?,?,?,?,?)");
				pstmt.setString(1, quiz.getEpisode());
				pstmt.setString(2, quiz.getMem_userid());
				pstmt.setString(3, quiz.getRadio1());
				pstmt.setString(4, quiz.getRadio2());
				pstmt.setString(5, quiz.getRadio3());
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally{
				if (pstmt != null) 
					try { pstmt.close(); } catch(SQLException ex) {}
				if (conn != null) 
					try { conn.close(); } catch(SQLException ex) {}
			}
		}
		
		public void insertAnswer(AnswerDataBean answer) throws Exception {
			
		}
		
				
		public int answerCheck(String mem_userid) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			int x = -1;
			String sql = "";
			
			try {
				conn = getConnection();
				
				sql = "select answer1 from quiz where mem_userid = ?";
				sql += " and answer1 = (select answer1 from quiz where mem_userid = admin";
				pstmt.setString(1, mem_userid);
				rs = pstmt.executeQuery();
				
/*				if(rs.next()) {
					dbpwd = rs.getString("mem_pwd");
					if(dbpwd.equals(mem_pwd))
						x = 1; //모두 정답
					else
						x = 0; //오답있음
				} else
					x = -1; //ㅇ
*/					
			} catch(Exception ex) {
				ex.printStackTrace();
			} finally {
				if(rs != null) try { rs.close(); } catch(SQLException ex) {}
				if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if(conn != null) try { conn.close(); } catch(SQLException ex) {}
			}
			return x;
		}
				 
	
	}