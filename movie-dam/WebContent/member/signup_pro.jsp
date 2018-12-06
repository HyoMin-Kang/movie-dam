<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="moviedam.member.MemberDBBean"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "회원 가입 완료";
	String mem_year = request.getParameter("mem_year");
	String mem_month = request.getParameter("mem_month");
	String mem_day = request.getParameter("mem_day");
%>

<jsp:useBean id="member" class="moviedam.member.MemberDataBean">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>

<%
	member.setMem_status(0); //0:회원, 1:탈퇴회원
	member.setMem_birth(mem_year + mem_month + mem_day);
	member.setJoin_date(new Timestamp(System.currentTimeMillis()));
	member.setMem_type(0); //0:회원, 1:관리자

	MemberDBBean mem_insert = MemberDBBean.getInstance();
	mem_insert.insertMember(member);
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<main>
<section class="section section-shaped section-lg">
	<div class="shape shape-style-1 bg-gradient-default">
		<span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span>
	</div>
	<div class="container pt-lg-md">
		<div class="row justify-content-center">
			<div class="col-lg-5">
				<div class="card bg-secondary shadow border-0">
					<div class="card-body px-lg-5 py-lg-5">
						<div class="text-center text-muted mb-4">
							<small>Sign Up Complete</small>
						</div>

						<div class="alert alert-secondary" role="alert">
							<strong><%=member.getMem_name()%></strong>님 회원 가입이 완료되었습니다.
						</div>
						<div class="form-group col">
							<div class="input-group mb-3">
								<button onclick="window.location.href='/movie-dam/main.jsp'" type="button" class="btn btn-secondary">메인페이지로 이동</button>
								<button onclick="window.location.href='/movie-dam/member/login_form.jsp'" type="button" class="btn btn-primary">로그인</button>
							</div>
							<div class="col-sm-2 col-xs-4"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</main>


<jsp:include page="/module/footer.jsp" flush="false" />

</body>
</html>
