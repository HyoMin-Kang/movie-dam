<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

<!-- Button -->
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<a href="/movie-dam/member/profile.jsp" class="btn btn-default" role="button">마이페이지</a>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="/movie-dam/main.jsp">영화담</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">홈 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">영화 소개</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
        	<a class="dropdown-item" href="/movie-dam/movie/movie_list.jsp">영화목록</a>
        	<a class="dropdown-item" href="/movie-dam/movie/movie_boxoffice.jsp">박스오피스</a> 
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">영화 토론</a>
      	<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
      		<a class="dropdown-item" href="/movie-dam/debate/debate_chanban.jsp">찬반토론</a>
      		<a class="dropdown-item" href="/movie-dam/debate/debate_battle.jsp">토론배틀</a>
      	</div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">영화 수다</a>
      	<div class="dropdown-menu" aria-labelledby="navbarDropdown3">
      		<a class="dropdown-item" href="/movie-dam/board/free_board.jsp">자유게시판</a>
      		<a class="dropdown-item" href="/movie-dam/board/movie_quiz.jsp">영화퀴즈</a>
      		<a class="dropdown-item" href="/movie-dam/board/cinema_restaurant.jsp">극장맛집</a>
      		<a class="dropdown-item" href="#">굿즈정보</a>
      	</div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">영화관련 정보</a>
      	<div class="dropdown-menu" aria-labelledby="navbarDropdown4">
      		<a class="dropdown-item" href="/movie-dam/board/movie_preview.jsp">시사회</a>
      		<a class="dropdown-item" href="/movie-dam/board/movie_stage.jsp">무대인사</a>
      		<a class="dropdown-item" href="/movie-dam/board/movie_issue.jsp">영화이슈</a>
      	</div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<!-- <div class="nav">
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
</div> -->