<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="moviedam.board.PreviewDBBean"%>
<%@ page import="moviedam.board.PreviewDataBean"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "시사회";
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) { pageNum = "1"; }
	try {
		PreviewDBBean preview_db = PreviewDBBean.getInstance();
		List<PreviewDataBean> previewList = null; 
		
	    int pageSize = 9;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		int total_page = 0;
		count = preview_db.getArticleCount(); 
	    if (count > 0) {
	    	previewList = preview_db.getArticles(startRow, endRow);
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
					<h4>Movie Preview</h4>
					<p>현재 진행되고 있는 다양한 시사회 정보를 확인해보세요</p>
				</div>
			</div>
		</div>

		<div class="row justify-content-center mb-4">
			<div class="btn-group btn-group-toggle" data-toggle="buttons">
				<label class="btn btn-outline-secondary"> <input type="checkbox" checked="checked" autocomplete="off">CGV
				</label> <label class="btn btn-outline-secondary"> <input type="checkbox" checked="checked" autocomplete="off">롯데시네마
				</label> <label class="btn btn-outline-secondary"> <input type="checkbox" checked="checked" autocomplete="off">메가박스
				</label>
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
		
	   for (int i = 0 ; i < previewList.size() ; i++) {
		  PreviewDataBean preview = previewList.get(i);		   
%>
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-features-area mb-50">
					<a href="<%=preview.getOriginal_url()%>">
						<img src="/movie-dam/imageFolder/movie_preview/<%=preview.getArticle_file() %>" alt="preview_img">
					</a>
					<div class="feature-content d-flex align-items-center justify-content-between">
						<div class="feature-title">
							<a href="#">
								<span class="badge badge-pill badge-primary"><%=preview.getCinema()%></span>
							</a>
							<h5><%=preview.getArticle_title() %></h5>
							<p>일시 | <%=preview.getPreview_date() %></p>
							<p>장소 | <%=preview.getPreview_region() %></p>
						</div>
					</div>
				</div>
			</div>
			<%		} %>
		</div>

		<%}%>
		<c:if test="${sessionScope.userid eq 'admin' }">
			<div class="row mb-3 mr-2 d-flex justify-content-end">
				<a class="btn btn-dark" href="writeForm.jsp?board_id=4&article_writer=${sessionScope.userid}" role="button">글쓰기</a>
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