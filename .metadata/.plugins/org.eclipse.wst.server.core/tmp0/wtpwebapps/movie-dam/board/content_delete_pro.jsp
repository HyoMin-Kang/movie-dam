<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="moviedam.board.ArticleDBBean"%>
<%@ page import="moviedam.board.ArticleDataBean"%>
<%@ page import="moviedam.board.ArticlelikeDataBean"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<%
	int board_id = Integer.parseInt(request.getParameter("board_id"));
	int article_id = Integer.parseInt(request.getParameter("article_id"));
	String mem_id = null;
	if(session.getAttribute("userid") != null) {
		mem_id = (String)session.getAttribute("userid");

		ArticleDBBean delete = ArticleDBBean.getInstance(); 
		delete.deletelike(board_id,article_id,mem_id);
		
} else {
%>
	<script>   
		alert('로그인을 해주세요.');
		location.href = '/movie-dam/member/login_form.jsp'
	</script>
<%} 
		