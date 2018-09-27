<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화 목록";
	String sort = request.getParameter("sort");
	if (sort == null || sort.length() == 0) {
		sort = "vote_count";
	}
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div class="container">
	<h3>
		<%=title%>
		<small class="text-muted">Movie List</small>
	</h3>
	<p class="lead"></p>
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary">장르</button>
		<div class="btn-group show" role="group">
			<button id="selectGenre" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></button>
			<div class="dropdown-menu" aria-labelledby="selectGenre" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 48px, 0px);">
				<a class="dropdown-item" href="#">전체</a> 
				<a class="dropdown-item" href="#">액션</a>
				<a class="dropdown-item" href="#">모험</a>
				<a class="dropdown-item" href="#">애니메이션</a>
				<a class="dropdown-item" href="#">코미디</a>
				<a class="dropdown-item" href="#">범죄</a>
				<a class="dropdown-item" href="#">다큐멘터리</a>
				<a class="dropdown-item" href="#">드라마</a>
				<a class="dropdown-item" href="#">가족</a>
				<a class="dropdown-item" href="#">판타지</a>
				<a class="dropdown-item" href="#">역사</a>
				<a class="dropdown-item" href="#">공포</a>
				<a class="dropdown-item" href="#">음악</a>
				<a class="dropdown-item" href="#">미스터리</a>
				<a class="dropdown-item" href="#">로맨스</a>
				<a class="dropdown-item" href="#">SF</a>
				<a class="dropdown-item" href="#">TV 영화</a>
				<a class="dropdown-item" href="#">스릴러</a>
				<a class="dropdown-item" href="#">전쟁</a>
				<a class="dropdown-item" href="#">서부</a>
			</div>
		</div>
	</div>
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary">정렬</button>
		<div class="btn-group show" role="group">
			<button id="selectSort" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></button>
			<div class="dropdown-menu" aria-labelledby="btnGroupDrop2" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 48px, 0px);">
				<a class="dropdown-item" href="movie_list.jsp?sort=vote_count">인기순</a>
				<a class="dropdown-item" href="movie_list.jsp?sort=release_date">최근 개봉순</a>
				<a class="dropdown-item" href="movie_list.jsp?sort=revenue">최고 흥행순</a>
			</div>
		</div>
	</div>

	<div class="row">
		
	</div>
</div>



<jsp:include page="/module/footer.jsp" flush="false" />

<jsp:include page="./getMovieList.jsp" flush="false" />

</body>
</html>