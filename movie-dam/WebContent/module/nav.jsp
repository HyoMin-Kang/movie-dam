<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

<!-- Button -->
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<a href="/movie-dam/member/profile.jsp" class="btn btn-default" role="button">마이페이지</a>

<!-- Navigation -->
<div class="nav">
	<ul>
		<li class="movie introduction"><a href="/movie-dam/movie/movie_list.jsp">영화소개</a>
			<ul>
				<li><a href="/movie-dam/movie/movie_list.jsp">영화목록</a></li>
				<li><a href="/movie-dam/movie/movie_boxoffice.jsp">박스오피스</a></li> 
	       	</ul>
       	</li>
       	<li class="movie introduction"><a href="/movie-dam/debate/debate_chanban.jsp">영화토론</a>
	       	<ul>
				<li><a href="/movie-dam/debate/debate_chanban.jsp">찬반토론</a></li>
	          	<li><a href="/movie-dam/debate/debate_battle.jsp">토론배틀</a></li> 
	       	</ul>
       	</li>
       	<li class="home"><a href="/movie-dam/main.jsp">logo</a></li>
       	<li class="movie talk"><a href="/movie-dam/board/free_board.jsp">영화수다</a>
			<ul>
				<li><a href="/movie-dam/board/free_board.jsp">자유게시판</a></li>
				<li><a href="/movie-dam/board/movie_quiz.jsp">영화퀴즈</a></li>
          		<li><a href="/movie-dam/board/cinema_restaurant.jsp">극장맛집</a></li>
          		<li><a href="#">굿즈정보</a></li>
       		</ul>
		</li>
		<li class="movie info"><a href="/movie-dam/board/movie_preview.jsp">영화관련정보</a>
			<ul>
				<li><a href="/movie-dam/board/movie_preview.jsp">시사회</a></li>
          		<li><a href="/movie-dam/board/movie_stage.jsp">무대인사</a></li>
          		<li><a href="/movie-dam/board/movie_issue.jsp">영화이슈</a></li>
       		</ul>
       	</li>
	</ul>
</div>