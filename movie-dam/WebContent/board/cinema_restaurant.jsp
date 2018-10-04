<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화관 맛집";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<!-- ***** Breadcumb Area Start ***** -->
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/hero-1.jpg)"></div>
<!-- ***** Breadcumb Area End ***** -->

<section class="dorne-single-listing-area section-padding-100">
<div class="container">
	<div class="row">
		<div class="col-12">
		    <div class="section-heading dark text-center">
		    	<span></span>
				<h4>Cinema restaurant</h4>
				<p>검색된 글 : 개</p>
			</div>
		</div>
	</div>

	<div class="row justify-content-center">
		<div class="col-12">
			<form>
				<label class="control-label">게시글 검색</label>
				<div class="form-group">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<select class="form-control" name="option">
						        <option value="all">전체글</option>
						        <option value="article_title">제목</option>
						        <option value="article_content">내용</option>
						        <option value="article_writer">작성자</option>
					        </select>
						</div>
						<input class="form-control" type="text" name="search" placeholder="궁금한 것을 검색해보세요">
						<div class="input-group-append">
							<input class="btn btn-outline-secondary" type="submit" value="검색"> 
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	
	<div class="row justify-content-center">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="/movie-dam/assets/images/pic/my-pic.png">
				<div class="caption">
					<h3>맛집제목</h3>
					<p>맛집설명</p>
				</div>
			</div>
		</div>
		
	</div>

	<a class="btn btn-sm btn-outline-secondary" href="writeForm.jsp?board_id=2&article_writer=${sessionScope.userid}" role="button" ><i class="fas fa-edit"></i>글쓰기</a>
</div>
</section>


<jsp:include page="/module/footer.jsp" flush="false" />

</body>
</html>