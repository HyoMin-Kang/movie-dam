<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "박스오피스";
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
								<u>박스오피스</u>
							</h2>
							<br>
							<p align="center">
								<button type="button" class="btn btn-default btn-lg" style="width: 100px">주간</button>
								<button type="button" class="btn btn-default btn-lg" style="width: 100px">월간</button>
								<button type="button" class="btn btn-default btn-lg" style="width: 100px">연간</button>
							</p>
							<div class="row margin-top-10">
								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="/movie-dam/assets/images/pic/my-pic.png">
										<div class="caption">
											<h3>영화제목</h3>
											<p>영화설명</p>
										</div>
									</div>
								</div>

								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="/movie-dam/assets/images/pic/my-pic.png">
										<div class="caption">
											<h3>영화제목</h3>
											<p>영화설명</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="/movie-dam/assets/images/pic/my-pic.png">
										<div class="caption">
											<h3>영화제목</h3>
											<p>영화설명</p>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="/movie-dam/assets/images/pic/my-pic.png">
										<div class="caption">
											<h3>영화제목</h3>
											<p>영화설명</p>
										</div>
									</div>
								</div>

								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="/movie-dam/assets/images/pic/my-pic.png">
										<div class="caption">
											<h3>영화제목</h3>
											<p>영화설명</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="/movie-dam/assets/images/pic/my-pic.png">
										<div class="caption">
											<h3>영화제목</h3>
											<p>영화설명</p>
										</div>
									</div>
								</div>
							</div>

						</div>


						<!-- Footer Start -->
						<div class="col-md-12 page-body margin-top-50 footer">
							<footer>
								<ul class="menu-link">
									<li><a href="/movie-dam/member/profile.jsp">프로필</a></li>
									<li><a href="#">활동</a></li>
									<li><a href="#">메시지</a></li>
									<li><a href="/movie-dam/member/profile_setting.jsp">설정</a></li>
								</ul>

								<p>© 영화담</p>
							</footer>
						</div>
						<!-- Footer End -->


					</div>
					<!-- Post End -->

				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/module/footer.jsp" flush="false"/>