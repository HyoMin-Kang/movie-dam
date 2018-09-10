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
								<u>영화이슈</u>
							</h2>
							<br> <small>쏟아져 나오는 영화계의 소식을 전해드립니다!</small> <br>
							<div class="margin-top-50">
								<div class="col-md-3">
									<div class="thumbnail">
										<a target="_blank" href=""><img src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
									</div>
								</div>
								<div class="col-md-3">
									<div class="thumbnail">
										<a target="_blank" href=""><img src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
									</div>
								</div>
								<div class="col-md-3">
									<div class="thumbnail">
										<a target="_blank" href=""><img src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
									</div>
								</div>
								<div class="col-md-3">
									<div class="thumbnail">
										<a target="_blank" href=""><img src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
									</div>
								</div>
								<div align="center">
									<button type="button" class="btn btn-default btn-md" style="width: 100px">더보기</button>
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