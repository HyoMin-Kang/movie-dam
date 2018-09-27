<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화 목록";
	String resultPage = request.getParameter("resultPage");
	if (resultPage == null || resultPage.length() == 0) {
		resultPage = "1";
	}
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
				<a class="dropdown-item" href="movie_list.jsp?resultPage=1&sort=vote_count">인기순</a>
				<a class="dropdown-item" href="movie_list.jsp?resultPage=1&sort=release_date">최근 개봉순</a>
				<a class="dropdown-item" href="movie_list.jsp?resultPage=1&sort=revenue">최고 흥행순</a>
			</div>
		</div>
	</div>

	<div class="row">
		
	</div>

	<!-- Pagination -->
	<div>
		<ul class="pagination">
			<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
			</li>
			<li class="page-item active"><a class="page-link" href="movie_list.jsp?resultPage=1&sort=vote_count">1</a>
			</li>
			<li class="page-item"><a class="page-link" href="movie_list.jsp?resultPage=2&sort=vote_count">2</a></li>
			<li class="page-item"><a class="page-link" href="movie_list.jsp?resultPage=3&sort=vote_count">3</a></li>
			<li class="page-item"><a class="page-link" href="movie_list.jsp?resultPage=4&sort=vote_count">4</a></li>
			<li class="page-item"><a class="page-link" href="movie_list.jsp?resultPage=5&sort=vote_count">5</a></li>
			<li class="page-item"><a class="page-link" href="#">&raquo;</a>
			</li>
		</ul>
	</div>
</div>



<jsp:include page="/module/footer.jsp" flush="false" />

<script>
$(document).ready(function() {
	var page = '<%=resultPage%>';
	var sort = '<%=sort%>';
	
	var settings = {
	  	async: true,
	  	crossDomain: true,
	  	url: 'https://api.themoviedb.org/3/discover/movie',
		method: 'GET',
	  	data: {
			'page': page,
		  	'include_video': 'false',
		  	'include_adult': 'false',
		  	'sort_by': sort+'.desc',
		  	'region': 'KR',
		  	'language': 'ko-KR',
		  	'api_key': '9dd279523f7113a4103a8f1e9ef6abe3'
	  	},
	  	dataType: 'json',
	  	headers: {}
	}

	$.ajax(settings).done(function (response) {
		console.log(response);
  		$('.lead').html('총 '+response.total_results+'개의 작품 검색');
  		var rs = [];
  		var hoverList = new Array();
  		
  		var settings2 = {
		  "async": true,
		  "crossDomain": true,
		  "url": "https://api.themoviedb.org/3/genre/movie/list?language=ko-KR&api_key=9dd279523f7113a4103a8f1e9ef6abe3",
		  "method": "GET",
		  "headers": {},
		  "data": "{}"
		}

		$.ajax(settings2).done(function (response2) {
		  console.log(response2);
		});
  
  		for(var i=0; i<response['results'].length; i++) {
  			
  /* 			var data = new Object();
  			data.index = i;
  			data.overview = response['results'][i]['overview'];
  			data.popularity = response['results'][i]['popularity'];
  			hoverList.push(data); */
  			  			
  			rs.push('<div class="card mb-3 col-lg-3">');
  			rs.push('<h4 class="card-header">'+response['results'][i]['title']+'</h4>');
  			if(response['results'][i]['poster_path'] == null) {
  		  		rs.push('<a href="movie_detail.jsp?id='+response['results'][i]['id']+'" class="hvr-fade"><img style="width: 100%; display: block;" src="https://via.placeholder.com/350x500?text=dont+find+poster" alt="Card image"></a>');
  			} else {
  		  		rs.push('<a href="movie_detail.jsp?id='+response['results'][i]['id']+'" class="hvr-fade"><img class="hvr-fade" style="width: 100%; display: block;" src="https://image.tmdb.org/t/p/original'+response['results'][i]['poster_path']+'" alt="Card image"></a>');
  			}
  		  	rs.push('<ul class="list-group list-group-flush">');
			rs.push('<li class="list-group-item" id="genre">장르 '+response['results'][i]['genre_ids']+'</li>');
			rs.push('<li class="list-group-item">개봉일 '+response['results'][i]['release_date']+'</li>');
			rs.push('</ul>');
			rs.push('<div class="card-body">');
			rs.push('<a href="#" class="card-link">예매하기</a>');
			rs.push('<a href="movie_detail.jsp?id='+response['results'][i]['id']+'" class="card-link">상세보기</a>');
			rs.push('</div>');
			rs.push('</div>');
			
			/* $.each(genresArray, function(index, item) {
				$('#genre').html(item.join(','));
			}); */

  	  		$('.row').html(rs.join(''));
  		}
  		
/*   		var jsonData = JSON.stringify(hoverList);
  		console.log(jsonData); */

  			
  		/*
		.pagination : 페이징 태그가 그려질 div
		#pageIndex : 현재 페이지 위치 저장
		recordCount : 페이지당 레코드 수
		total_pages : 전체 페이지 수
		totl_results : 전체 결과 수
		eventName : 페이징 하단의 숫자 등의 버튼이 클릭되었을 때 호출될 함수 이름
  		*/
  		var pageIndex = null;
  		var eventName = null;
  		$('li.page-item').click(function() {
  	  		var pagination = $('.pagination'); //그려질 div
  		});
  		
	});
});
</script>
</body>
</html>