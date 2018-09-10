<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "ㅇㅇㅇ님의 프로필";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div id="main">
	<div class="container">
		<div class="row">

			<!-- About Me (Left Sidebar) Start -->
			<div class="col-md-3">
				<div class="about-fixed">

					<div class="my-pic">
						<img src="/movie-dam/assets/images/pic/my-pic.png" alt="">
						<a href="javascript:void(0)" class="collapsed" data-target="#menu" data-toggle="collapse"><i class="icon-menu menu"></i></a>

						<div id="menu" class="collapse">
							<ul class="menu-link">
								<li><a href="#">프로필</a></li>
								<li><a href="#">활동</a></li>
								<li><a href="#">메시지</a></li>
								<li><a href="#">설정</a></li>
							</ul>
						</div>
					</div>
					<div class="my-detail">
						<div class="white-spacing">
							<h1>Nick Name</h1>
							<h5>
								<a href="./profile_follower.jsp">팔로워 00명</a>&nbsp;/&nbsp;
								<a href="./profile_following.jsp">팔로잉 00명</a>
							</h5>
							<span><a class="btn btn-default" href="#" role="button">팔로우</a></span> 
							<span><a class="btn btn-default" href="#" role="button">팔로우 해제</a></span> 
						</div>
						<ul class="social-icon">
							<li><a href="#" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" target="_blank" class="twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" target="_blank" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank" class="github"><i class="fa fa-github"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- About Me (Left Sidebar) End -->
			
			<!-- Blog Post (Right Sidebar) Start -->
			<div class="col-md-9">
				<div class="col-md-12 page-body">
					<div class="row">
						<div class="sub-title">
							<nav class="navbar">
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">

										<li class="nav"><a href="./profile.jsp" role="button" aria-expanded="false">프로필</a></li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">활동<span class="caret"></span></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="active_individual.html">개인</a></li>
												<li><a href="active_like.html">좋아요</a></li>
												<li><a href="active_friend.html">친구</a></li>
											</ul>
										</li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">메시지<span class="caret"></span></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="./message_received.jsp">받은 메시지</a></li>
												<li><a href="./message_send.jsp">메시지 보내기</a></li>
											</ul>
										</li>
										<li class="nav"><a href="./profile_setting.jsp" role="button" aria-expanded="false">설정</a></li>
									</ul>
								</div>
								<!-- /.navbar-collapse -->
							</nav>
						</div>
						<!-- /.container-fluid -->
						
						<div class="col-md-12 content-page">
				            <!-- Default panel contents -->
				 			<form>
								<div class="form-group">
									<label for="InputPassword">현재 비밀번호 (비밀번호 변경 시 본인확인)</label>
									<input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호를 입력하세요">
				  				</div>
								<div class="form-group">
									<label for="InputPassword">비밀번호 변경</label>
									<input type="password" class="form-control" id="InputnewPassword1" placeholder="비밀번호를 입력하세요">
				  				</div>
				      			<div class="form-group">
				    				<label for="InputPassword">비밀번호 재확인</label>
				    				<input type="password" class="form-control" id="InputnewPassword2" placeholder="비밀번호를 입력하세요">
				  				</div>

								<div class="form-group">
									<label for="InputNickname">닉네임</label> <input type="email"
										class="form-control" id="exampleInputEmail1"
										placeholder="닉네임을 입력하세요">
								</div>

								<div class="form-group">
									<label for="InputGender">성별</label>
									<div>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
											여자
										</label> <label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
											남자
										</label>
									</div>
								</div>
								<div class="form-group">
									<label for="InputAge">생년월일</label> 
									<input type="text" class="form-control" placeholder="YYYY" size="4">년
									<input type="text" class="form-control" placeholder="MM" size="2">월
									<input type="text" class="form-control" placeholder="DD" size="2">일
								</div>

								<button type="submit" class="btn btn-default">변경사항 저장</button>
							</form>
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
				</div>
			</div>
			
		</div> <!-- /.row -->
	</div> <!-- /.container -->
</div> <!-- /.main -->

<jsp:include page="/module/footer.jsp" flush="false" />