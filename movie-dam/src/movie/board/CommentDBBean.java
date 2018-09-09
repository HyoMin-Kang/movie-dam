package movie.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CommentDBBean {
	
private static CommentDBBean instance = new CommentDBBean();

public static CommentDBBean getInstance() {
    return instance;
}


//커넥션풀로부터 Connection객체를 얻어냄
private Connection getConnection() throws Exception {
    Context initCtx = new InitialContext();
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource)envCtx.lookup("jdbc/miso");
    return ds.getConnection();
}

public void insertComment(CommentDataBean dto) {
	Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
	int num = dto.getNum();
	int number = 0;
	
	try {
		conn = getConnection();		
		pstmt = conn.prepareStatement("select max(num) from comment");
		rs = pstmt.executeQuery();
		if(rs.next()) {
			number = rs.getInt(1)+1;
		} else {
			number = 1;
		}
		String sql = "insert into comment(id,content,reg,ref) values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getId());
		pstmt.setString(2, dto.getContent());
		pstmt.setTimestamp(3, dto.getReg());
		pstmt.setInt(4, dto.getRef());
		pstmt.executeUpdate();
	}catch(Exception ex) {
    	ex.printStackTrace();
    } finally {
    	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
        if (conn != null) try { conn.close(); } catch(SQLException ex) {}

    }
}

//board테이블에 저장된 전체글의 수를 얻어냄(select문)<=list.jsp에서 사용
	public int getCommentCount()
           throws Exception {
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      

      int x=0;
      

      try {
          conn = getConnection();
          
          
          	pstmt = conn.prepareStatement("select b.* ,(select count(*) from comment c where b.num = c.ref)as ccount from board b");
       
         
          rs = pstmt.executeQuery();

          if (rs.next()) {
             x= rs.getInt(1);
			}
      } catch(Exception ex) {
          ex.printStackTrace();
      } finally {
          if (rs != null) try { rs.close(); } catch(SQLException ex) {}
          if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
          if (conn != null) try { conn.close(); } catch(SQLException ex) {}
      }
		return x;
  }

public ArrayList<CommentDataBean> getContentlist(int ref) 
        throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<CommentDataBean> contentList = null;
			
			     
			try{
			conn = getConnection();
			
			String sql = "select * from comment where ref like '"+ref+"'order by reg desc" ;
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			 contentList = new ArrayList<CommentDataBean>();
			  do {
				  CommentDataBean content = new CommentDataBean();
			  content.setId(rs.getString("id"));
			  content.setContent(rs.getString("content"));
			  content.setReg(rs.getTimestamp("reg"));
			
			
			  contentList.add(content);
			  }while(rs.next());
			}
			}catch(Exception e) {
			e.printStackTrace();
			}finally{
			if (pstmt != null) 
			  try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) 
			  try { conn.close(); } catch(SQLException ex) {}
			}
			return contentList;      
			}



}