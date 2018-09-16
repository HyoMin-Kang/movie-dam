<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화 목록";
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
				<a class="dropdown-item" href="#">드라마</a>
				<a class="dropdown-item" href="#">멜로</a>
				<a class="dropdown-item" href="#">공포/스릴러</a>
				<a class="dropdown-item" href="#">SF/판타지</a>
				<a class="dropdown-item" href="#">애니메이션</a>
				<a class="dropdown-item" href="#">다큐멘터리</a>
				<a class="dropdown-item" href="#">독립영화</a>
			</div>
		</div>
	</div>
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary">정렬</button>
		<div class="btn-group show" role="group">
			<button id="selectSort" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></button>
			<div class="dropdown-menu" aria-labelledby="btnGroupDrop2" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 48px, 0px);">
				<a class="dropdown-item" href="#">최근 개봉순</a> 
				<a class="dropdown-item" href="#">인기순</a>
				<a class="dropdown-item" href="#">토론 많은순</a>
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