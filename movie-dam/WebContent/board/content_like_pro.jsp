<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="moviedam.board.ArticleDBBean"%>
<%@ page import="moviedam.board.ArticleDataBean"%>
<%@ page import="moviedam.board.ArticlelikeDataBean"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="like" class="moviedam.board.ArticlelikeDataBean">
<jsp:setProperty property="*" name="like" />
</jsp:useBean>

<%
	int board_id = Integer.parseInt(request.getParameter("board_id"));
	int article_id = Integer.parseInt(request.getParameter("article_id"));
	String mem_id = (String)session.getAttribute("userid");
	
	if(!mem_id.equals("")){ 
		like.setMem_id(mem_id);
		like.setLike_type(1);
		
		ArticleDBBean like_db = ArticleDBBean.getInstance();
		like_db.insertLike(like);

	} else {
%>
	<script>
		alert('로그인을 해주세요.');
		location.href = '/movie-dam/member/login_form.jsp';
	</script>
<%
	}
%>