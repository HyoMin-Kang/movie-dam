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

<div class="container">
	<h3>
		<%=title %>
		<small class="text-muted">Movie Issue</small>
	</h3>
	
	<div class="row">

		<!--Post Start -->
		<div class="col-md-15">
			<div class="col-md-12 page-body">
				<div class="row">

					<div class="col-md-12 content-page">

						<div class="margin-top-50">
							<div class="col-md-3">
								<div class="thumbnail">
									<a target="_blank" href=""><img
										src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">
									<a target="_blank" href=""><img
										src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">
									<a target="_blank" href=""><img
										src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
								</div>
							</div>
							<div class="col-md-3">
								<div class="thumbnail">
									<a target="_blank" href=""><img
										src="http://placehold.it/200x150"></a> <a href="">기사 제목</a>
								</div>
							</div>
							<div align="center">
								<button type="button" class="btn btn-default btn-md"
									style="width: 100px">더보기</button>
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

</body>
</html>