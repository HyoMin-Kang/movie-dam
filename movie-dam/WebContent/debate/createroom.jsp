<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "채팅방 생성";
%>
<%
	Cookie[] cookies = request.getCookies();
	String userid = "";
	if (cookies != null) {
		for (int i=0; i<cookies.length; i++) {
			if ( cookies[i].getName().equals("userid")) {
				userid = cookies[i].getValue();
			}
		}
	}
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<main>
<section class="section section-shaped section-lg">
	<div class="shape shape-style-1 shape-default">
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span>
	</div>
	<div class="container pt-lg-md">
		<div class="row justify-content-center">
			<div class="col-lg-5">
				<div class="card bg-secondary shadow border-0">
					<div class="card-body px-lg-5 py-lg-5">
						<div class="text-center text-muted mb-4">
							<small>Create a discussion chatting forum</small>
						</div>
						<form role="form" name="loginForm" method="post" action="login_pro.jsp">
							<div class="form-group mb-3">
								<div class="input-group input-group-alternative">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="ni ni-bullet-list-67"></i></span>
									</div>
                      				<input class="form-control" placeholder="Title" type="title">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group input-group-alternative">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="ni ni-single-02"></i></span>
									</div>
                    				  <input class="form-control" placeholder="Number" type="number" min="2" value="10">
								</div>
							</div>
							
							<div class="form-group">
								<div class="input-group input-group-alternative">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
									</div>
                    				  <input class="form-control" placeholder="Password" type="password">
								</div>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary my-4">Create</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</main>

<jsp:include page="/module/footer.jsp" flush="false"/>

</body>
</html>