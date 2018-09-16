<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "moviedam.board.CommentDBBean" %>
<%@ page import = "moviedam.board.CommentDataBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>
    
    
    <jsp:useBean id="cmtdto" class="moviedam.board.CommentDataBean"/>
    <jsp:setProperty property="*" name="cmtdto"/>
    
    
    <%
    	cmtdto.setReg(new Timestamp(System.currentTimeMillis()) );
    
    	String num = request.getParameter("ref");
    	String pageNum = request.getParameter("pagenum");
    	
    	CommentDBBean dao = CommentDBBean.getInstance();
    	dao.insertComment(cmtdto);
    %>

<html>
<head>
<meta http-equiv="Refresh"
  content="0;url=content.jsp?num=<%=num%>&book_kind=<%=pageNum%>">

</head>
<body>

</body>
</html>