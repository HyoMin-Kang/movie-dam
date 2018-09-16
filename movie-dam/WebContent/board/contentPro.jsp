<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "moviedam.board.CommentDBBean" %>
<%@ page import = "moviedam.board.CommentDataBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>
    
    
    <jsp:useBean id="cmtdto" class="moviedam.board.CommentDataBean"/>
    <jsp:setProperty property="*" name="cmtdto"/>
    
    
    <%
    	cmtdto.setCmt_date(new Timestamp(System.currentTimeMillis()) );
    		
        int article_id = Integer.parseInt(request.getParameter("cmt_ref"));
    	String pageNum = request.getParameter("pagenum");
    	
    	
    	CommentDBBean cmt = CommentDBBean.getInstance();
    	cmt.insertComment(cmtdto);
    %>

<html>
<head>
<meta http-equiv="Refresh" content="0;url=content.jsp?article_id=<%=article_id%>&pageNum=<%=pageNum%>">

</head>
<body>

</body>
</html>