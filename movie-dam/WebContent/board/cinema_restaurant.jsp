<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "극장 맛집";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<div class="container">
	<div class="row">
		<!--Post Start -->
		<div class="col-md-15">
			<div class="col-md-12 page-body">
				<div class="row">
					<div class="col-md-12 content-page">

						<!-- Default panel contents -->
						<h2>
							<u>극장맛집</u>
						</h2>
						<br> <small>극장 주변에 위치한 맛집, 카페에 대한 정보를 알려주세요.</small> <br>
						<div class="margin-top-30">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									지역선택 <span class="caret"></span>
								</button>
								<div class="dropdown-menu">
									<li><a class="dropdown-item" href="#">서울</a></li>
									<li><a class="dropdown-item" href="#">경기도</a></li>
									<li><a class="dropdown-item" href="#">경상도</a></li>
									<li><a class="dropdown-item" href="#">전라도</a></li>
								</div>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									영화관선택 <span class="caret"></span>
								</button>
								<div class="dropdown-menu">
									<li><a class="dropdown-item" href="#">CGV</a></li>
									<li><a class="dropdown-item" href="#">메가박스</a></li>
								</div>
							</div>
						</div>
						<div class="margin-top-30">
							<button type="button" class="btn btn-default btn-md">댓글순</button>
							<button type="button" class="btn btn-default btn-md">추천순</button>
							<button type="button" class="btn btn-default btn-md">조회</button>

							<div>
								<form class="navbar-form navbar-center" role="search">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Search">
									</div>
									<button type="submit" class="btn btn-default">Submit</button>
								</form>

								<div align="right">
									<button type="button" class="btn btn-default btn-md">쓰기</button>
									<button type="button" class="btn btn-default"
										aria-label="Left Align">
										<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
									</button>
									<button type="button" class="btn btn-default"
										aria-label="Left Align">
										<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
									</button>
								</div>
							</div>
						</div>

						<div class="row margin-top-10">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="/movie-dam/assets/images/pic/my-pic.png">
									<div class="caption">
										<h3>맛집제목</h3>
										<p>맛집설명</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="/movie-dam/assets/images/pic/my-pic.png">
									<div class="caption">
										<h3>맛집제목</h3>
										<p>맛집설명</p>
									</div>
								</div>
							</div>
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
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="/movie-dam/assets/images/pic/my-pic.png">
									<div class="caption">
										<h3>맛집제목</h3>
										<p>맛집설명</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="/movie-dam/assets/images/pic/my-pic.png">
									<div class="caption">
										<h3>맛집제목</h3>
										<p>맛집설명</p>
									</div>
								</div>
							</div>
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

					</div>
				</div>

			</div>
			<!-- Post End -->

		</div>
	</div>
</div>


<jsp:include page="/module/footer.jsp" flush="false"/>

</body>
</html>