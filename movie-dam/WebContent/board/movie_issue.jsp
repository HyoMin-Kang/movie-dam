<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="moviedam.board.IssueDBBean"%>
<%@ page import="moviedam.board.IssueDataBean"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화 이슈";
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) { pageNum = "1"; }
	try {
		IssueDBBean issue_db = IssueDBBean.getInstance();
		List<IssueDataBean> issueList = null; 
		
		int pageSize = 9;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		int total_page = 0;
		count = issue_db.getArticleCount(); 
	    if (count > 0) {
	    	issueList = issue_db.getArticles(startRow, endRow);
		}  
	    
		number = count-(currentPage-1)*pageSize;
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/editor-2.jpg)"></div>

<section class="dorne-single-listing-area section-padding-100">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-heading dark text-center">
					<span></span>
					<h4>Movie Issue</h4>
					<p>영화와 관련된 다양한 소식들을 확인해보세요</p>
				</div>
			</div>
		</div>

		<% if (count == 0) { %>

		<div class="row">
			<div class="alert alert-danger" role="alert">게시판에 저장된 글이 없습니다.</div>
		</div>

		<% } else {%>

		<div class="row">
			<%  		
		int a = count / pageSize + (count % pageSize == 0 ? 0 : 1); //전체페이지 수 
		
		if(Integer.parseInt(pageNum) > a){ 
%>
			<jsp:forward page="error.jsp" />
			<% }
		
	   for (int i = 0 ; i < issueList.size() ; i++) {
		   IssueDataBean issue = issueList.get(i);		   
%>
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-features-area mb-50">
					<a href="<%=issue.getOriginal_url()%>">
						<img src="/movie-dam/imageFolder/movie_issue/<%=issue.getArticle_file() %>" alt="preview_img">
					</a>
					<div class="feature-content d-flex align-items-center justify-content-between">
						<div class="feature-title">
							<h5><%=issue.getArticle_title() %></h5>
							<p><%=issue.getReg_date() %></p>
						</div>
					</div>
				</div>
			</div>
			<%		} %>
		</div>

		<%}%>

		<c:if test="${sessionScope.userid eq 'admin' }">
			<div class="row mb-3 mr-2 d-flex justify-content-end">
				<a class="btn btn-dark" href="writeForm.jsp?board_id=5&article_writer=${sessionScope.userid}" role="button">글쓰기</a>
			</div>
		</c:if>

		<%
	} catch (Exception e) { }
%>
	</div>
</section>

<jsp:include page="/module/footer.jsp" flush="false" />

</body>
</html>