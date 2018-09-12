<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화 목록";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<div id="main">
	<div class="container">
		<div class="row">

			<!--Post Start -->
			<div class="col-md-15">
				<div class="col-md-12 page-body">
					<div class="row">

						<div class="col-md-12 content-page">

							<!-- Default panel contents -->
							<h2>
								<u>영화목록</u>
							</h2>
							<br>
							<div class="col-md-12">
								<div class="dropdown" align="center">
									<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
										장르<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">전체보기</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">액션</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">드라마</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">멜로</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">공포/스릴러</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">SF/판타지</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">애니</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">다큐멘터리</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">독립영화</a></li>
									</ul>
									<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">
										정렬<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">최근 개봉순</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">인기순</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1" href="#">토론이 많이 달린 순</a></li>
									</ul>
								</div>
							</div>
							<div class="row margin-top-12">
								<div class="col-md-10">
									<div class="thumbnail">
										<img src="/movie-dam/assets/images/pic/my-pic.png">
										<div class="caption">
											<h3>영화제목</h3>
											<p>영화설명</p>
											<div>
												<a href="#" class="btn btn-default" role="button">상세정보</a> 
												<a href="#" class="btn btn-default" role="button">예매하기</a>
											</div>
											<ul class="social-icon">
												<li><a href="#" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#" target="_blank" class="twitter"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#" target="_blank" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
					<!-- Post End -->

				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/module/footer.jsp" flush="false"/>