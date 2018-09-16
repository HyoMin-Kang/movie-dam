<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<% 
   String searchLoc = request.getParameter("searchLoc"); 
   Timestamp register=new Timestamp(System.currentTimeMillis());

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   try{
	 	 String jdbcUrl="jdbc:mysql://localhost:3306/cban";
	     String dbId="cban";
	     String dbPass="1234";
 	 
 	 Class.forName("com.mysql.jdbc.Driver");
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into smember values (?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1,searchLoc);
 	 pstmt.setTimestamp(2,register);
 	 pstmt.executeUpdate();
 	 
 	 str= "member 테이블에 새로운 레코드를 추가했습니다.";

 	}catch(Exception e){ 
 		e.printStackTrace();
 		str="member 테이블에 새로운 레코드를 추가에 실패했습니다";
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>

<html>
<head>
<title>레코드 추가</title>
</head>
<body>
  <%=str %>
</body>
</html>