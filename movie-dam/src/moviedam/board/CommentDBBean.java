package moviedam.board;

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

public void insertComment(CommentDataBean cmt) {
	Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
	
	String sql = "";
	
	try {
		conn = getConnection();	
    
        sql="insert into comment(cmt_writer,cmt_content,cmt_date,cmt_ref,cmt_parent) values(?,?,?,?,?)";
        pstmt =conn.prepareStatement(sql);
        pstmt.setString(1,cmt.getCmt_writer());
        pstmt.setString(2, cmt.getCmt_content());
        pstmt.setTimestamp(3, cmt.getCmt_date());
        pstmt.setInt(4, cmt.getCmt_ref());
        pstmt.setInt(5, cmt.getCmt_parent());
        pstmt.executeUpdate();
       
    }catch(Exception e) {
       e.printStackTrace();
    }finally {
        if (rs != null) try { rs.close(); } catch(SQLException ex) {}
         if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
         if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
    } 



public ArrayList<CommentDataBean> getContentlist(int cmt_ref) 
        throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<CommentDataBean> contentList = null;
			
			try{
			conn = getConnection();
			
			String sql = "select * from comment where cmt_ref like '"+cmt_ref+"'order by cmt_date desc" ;
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			 contentList = new ArrayList<CommentDataBean>();
			  do {
				  CommentDataBean content = new CommentDataBean();
			  content.setCmt_writer(rs.getString("cmt_writer"));
			  content.setCmt_content(rs.getString("cmt_content"));
			  content.setCmt_date(rs.getTimestamp("cmt_date"));
			
			
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