<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화 퀴즈";
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
								<u>영화퀴즈</u>
							</h2>
							<br> <small>매주 새로운 퀴즈가 여러분을 기다립니다. 퀴즈를 푼 뒤 응모하기 버튼을 눌러주세요. 정답을 맞추신 한 명의 당첨자께 소정의 선물을 드립니다.</small>
							<h3 align="center">2018년 8월 31일</h3>
							<form>
								<div class="form-group">
									<label>1. 다음 영화에서 삼차사의 세 번째 귀인이 된 인물은 누구인가?</label>
								</div>
								<div style="float: left">
									<img src="/movie-dam/assets/images/pic/god.jpg" class="img-responsive"
										alt="Responsive image" width="150" height="300">
								</div>
								<div style="float: left; margin-left: 100px;">
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
											차태현
										</label>
									</p>
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
											디오
										</label>
									</p>
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
											김동욱
										</label>
									</p>
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
											하정우
										</label>
									</p>
								</div>
								<div style="clear: both;"></div>
							</form>

							<div class="form-group margin-top-50">
								<label for="InputGender">2. 신과 함께: 인과 연은 2018년 8월 1일에
									개봉했다.</label>
							</div>
							<label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio1" value="option1">
								O
							</label> <label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">
								X
							</label>

							<form>
								<div class="form-group margin-top-50">
									<label>3. 신과 함께에서 염라대왕 역을 맡은 인물은?</label>
								</div>

								<div style="float: left;">
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
											윤재영
										</label>
									</p>
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
											김선희
										</label>
									</p>
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
											임수민
										</label>
									</p>
									<p>
										<label class="radio-inline"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2">
											이정재
										</label>
									</p>
								</div>
								<div style="clear: both;"></div>
							</form>
							<div align="center">
								<button type="button" class="btn btn-default btn-md"
									style="width: 100px">응모하기</button>
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