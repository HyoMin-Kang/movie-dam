<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="moviedam.board.ArticleDBBean"%>
<%@ page import="moviedam.board.ArticleDataBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="moviedam.board.RestaurantDBBean"%>
<%@ page import="moviedam.board.RestaurantDataBean"%>
<%@ page import="moviedam.member.MemberDataBean"%>
<%@ page import="moviedam.member.MemberDBBean"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화담";
%>
<%
	ArrayList<ArticleDataBean> articleList = null;
	ArticleDBBean article_db = ArticleDBBean.getInstance();
	articleList = article_db.getTopArticles();

	List<RestaurantDataBean> restaurantList = null;
	RestaurantDBBean restaurant_db = RestaurantDBBean.getInstance();
	restaurantList = restaurant_db.getTopArticles();

	MemberDBBean mem_db = MemberDBBean.getInstance();
%>
<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div id="mainCarousel" class="carousel slide vert" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#mainCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#mainCarousel" data-slide-to="1"></li>
		<ol>
			<img class="mouse-icon animated slow infinite fadeOutRight delay-3s" src="/movie-dam/assets/img/icon-img/mouse.png">
		</ol>
	</ol>

	<div class="carousel-inner">
		<div class="carousel-item active">
			<img class="d-block w-100 dorne-welcome-area bg-img bg-overlay" src="/movie-dam/assets/img/bg-img/coverlg_home.jpg" alt="First slide">
			<div class="carousel-content-1 d-none d-md-block">
				<p class="display-3 mb-4">라라랜드 같은 로맨스 영화</p>
				<p class="mb-5 h5">19개의 다양한 장르 별로 찾아볼 수 있는 영화 목록</p>
				<button type="button" class="btn dorne-btn" onclick="location.href='/movie-dam/movie/movie_list.jsp?resultPage=1&sort=vote_count&with_genres=10749'">
					<i class="ni ni-active-40" aria-hidden="true"></i> MORE
				</button>
			</div>
		</div>
		<div class="carousel-item">
			<img class="d-block w-100 dorne-welcome-area bg-img bg-overlay" src="/movie-dam/assets/img/bg-img/background-4.jpg" alt="Second slide">
			<div class="carousel-content-2">
				<div class="container">
					<div class="row">
						<div class="col mb-4">
							<a href="/movie-dam/debate/debate_chanban.jsp" id="icon1">
								<img class="mx-auto d-block mt-5" src="/movie-dam/assets/img/icon-img/debate.png" alt="icon1" width="85px">
							</a>
							<p class="display-4 mt-3">PRO-CON DEBATE</p>
							<p class="ml-4 mr-4">영화를 보고 다양한 주제에 대해<br>찬반 토론을 나누어 보세요
							</p>
						</div>
						<div class="col mb-4">
							<a href="/movie-dam/debate/debate_battle.jsp" id="icon2">
								<img class="mx-auto d-block mt-5" src="/movie-dam/assets/img/icon-img/discussion.png" alt="icon2" width="85px">
							</a>
							<p class="display-4 mt-3">DISCUSSION BATTLE</p>
							<p class="ml-4 mr-4">다양한 사람들과 실시간으로<br>영화에 대해 토론해 보세요
							</p>
						</div>
						<div class="col mb-4">
							<a href="/movie-dam/board/free_board.jsp?category=all" id="icon3">
								<img class="mx-auto d-block mt-5" src="/movie-dam/assets/img/icon-img/board.png" alt="icon3" width="85px">
							</a>
							<p class="display-4 mt-3">FREE BOARD</p>
							<p class="ml-4 mr-4">영화와 관련된 이야기를 자유롭게<br>나눌 수 있는 곳입니다
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col mb-4">
							<a href="/movie-dam/board/cinema_restaurant.jsp?theater=all" id="icon4">
								<img class="mx-auto d-block mt-5" src="/movie-dam/assets/img/icon-img/restaurant.png" alt="icon4" width="85px">
							</a>
							<p class="display-4 mt-3">CINEMA RESTAURANT</p>
							<p class="ml-4 mr-4">영화관 근처의 맛집을 추천하고<br>추천 받아 보세요
							</p>
						</div>
						<div class="col mb-4">
							<a href="/movie-dam/board/movie_preview.jsp" id="icon5">
								<img class="mx-auto d-block mt-5" src="/movie-dam/assets/img/icon-img/theater.png" alt="icon5" width="85px">
							</a>
							<p class="display-4 mt-3">MOVIE PREVIEW</p>
							<p class="ml-4 mr-4">개봉할 영화의 시사회 정보를<br>알고 싶다면?
							</p>
						</div>
						<div class="col mb-4">
							<a href="/movie-dam/board/movie_issue.jsp" id="icon6">
								<img class="mx-auto d-block mt-5" src="/movie-dam/assets/img/icon-img/news.png" alt="icon6" width="85px">
							</a>
							<p class="display-4 mt-3">MOVIE ISSUE</p>
							<p class="ml-4 mr-4">영화와 관련된 기사들을<br>한 곳에 모아두었습니다
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="/movie-dam/assets/js/jquery/jquery-2.2.4.min.js"></script>
<script src="/movie-dam/assets/js/bootstrap/popper.min.js"></script>
<script src="/movie-dam/assets/js/bootstrap/bootstrap.min.js"></script>
<script src="/movie-dam/assets/js/argon.min.js"></script>
<script src="/movie-dam/assets/js/others/plugins.js"></script>
<script src="/movie-dam/assets/js/active.js"></script>
<script src="/movie-dam/assets/js/bootstrap-datepicker.min.js"></script>
<script src="/movie-dam/assets/js/summernote-lite.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>

<script>
	$('.carousel').carousel({
		interval : 5000
	});
	$('#mainCarousel').bind('mousewheel', function(e) {
		if (e.originalEvent.wheelDelta / 120 > 0) {
			$(this).carousel('prev');
		} else {
			$(this).carousel('next');
		}
	});

	$('#icon1').mouseover(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/debate_y.png');
				$(this).find('img').addClass('animated pulse');
			}).mouseout(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/debate.png');
				$(this).find('img').removeClass('animated pulse');
			});
	$('#icon2').mouseover(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/discussion_y.png');
				$(this).find('img').addClass('animated pulse');
			}).mouseout(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/discussion.png');
				$(this).find('img').removeClass('animated pulse');
			});
	$('#icon3').mouseover(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/board_y.png');
				$(this).find('img').addClass('animated pulse');
			}).mouseout(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/board.png');
				$(this).find('img').removeClass('animated pulse');
			});
	$('#icon4').mouseover(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/restaurant_y.png');
				$(this).find('img').addClass('animated pulse');
			}).mouseout(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/restaurant.png');
				$(this).find('img').removeClass('animated pulse');
			});
	$('#icon5').mouseover(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/theater_y.png');
				$(this).find('img').addClass('animated pulse');
			}).mouseout(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/theater.png');
				$(this).find('img').removeClass('animated pulse');
			});
	$('#icon6').mouseover(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/news_y.png');
				$(this).find('img').addClass('animated pulse');
			}).mouseout(
			function() {
				$(this).find('img').attr('src',
						'/movie-dam/assets/img/icon-img/news.png');
				$(this).find('img').removeClass('animated pulse');
			});
</script>

</body>
</html>