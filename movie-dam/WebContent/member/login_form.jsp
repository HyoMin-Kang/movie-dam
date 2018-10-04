<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "로그인";
%>
<%
	Cookie[] cookies = request.getCookies();
	String userid = "";
	if (cookies != null) { //쿠키가 존재하면
		for (int i=0; i<cookies.length; i++) {
			if ( cookies[i].getName().equals("userid")) {
				userid = cookies[i].getValue(); //찾은 쿠키값 가져오기
			}
		}
	}
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<!-- ***** Breadcumb Area Start ***** -->
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/hero-1.jpg)"></div>
<!-- ***** Breadcumb Area End ***** -->

<!-- ***** Listing Destinations Area Start ***** -->
<section class="dorne-listing-destinations-area section-padding-100-50">
<div class="container">
	<div class="row">
        <div class="col-12">
            <div class="section-heading dark text-center">
                <span></span>
                <h4>Log in</h4>
                <p>서비스 이용을 위해 로그인해 주세요.</p>
            </div>
        </div>
    </div>
	
	<div class="row">
		<form name="loginForm" method="post" action="login_pro.jsp">
			<div class="form-group col">
				<label for="inputUserId">아이디</label>
				<input type="text" class="form-control" id="inputUserId" name="mem_userid" placeholder="User id" required="required" value="<%=userid %>">
			</div>
			<div class="form-group col">
      			<label for="inputPassword">비밀번호</label>
				<input type="password" class="form-control" id="inputPassword" name="mem_pwd" placeholder="Password" required="required">
   			</div>
   			<div class="custom-control custom-checkbox">
		      	<input type="checkbox" class="custom-control-input" id="idCheck" name="saveId"<% if(userid.isEmpty()==false) out.print(" checked=\"checked\"");%>>
		      	<label class="custom-control-label" for="idCheck">아이디 기억하기</label>
		    </div>
			<div class="form-group col">
				<button type="submit" class="btn btn-block dorne-btn mt-50">로그인</button>
				<button type="button" class="btn btn-block dorne-btn bg-white text-dark" onclick="history.go(-1);">이전 화면으로 돌아가기</button>
			</div>
			<span class="text-muted">아직 회원이 아니신가요? </span><a href="signup_form.jsp" target="_blank">회원 가입하기 <i class="fas fa-external-link-alt fas-sm"></i></a>
		</form>
	</div>
	
</div>
</section>

<jsp:include page="/module/footer.jsp" flush="false"/>

</body>
</html>