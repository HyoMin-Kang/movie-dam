<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "자유게시판";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div class="container">
	<div class="row">
		<!-- Post Start -->
		<div class="col-md-15">
			<div class="col-md-12 page-body">
				<div class="row">
					<div class="col-md-12 content-page">

						<!-- Default panel contents -->

						<h2>
							<u>자유게시판</u>
						</h2>
						<br> <small>여러분의 자유로운 이야기를 들려주세요.</small>
						<p align="center">
							<button type="button" class="btn btn-default btn-md"
								style="width: 100px">댓글순</button>
							<button type="button" class="btn btn-default btn-md"
								style="width: 100px">추천순</button>
							<button type="button" class="btn btn-default btn-md"
								style="width: 100px">조회</button>
						</p>

					</div>

				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/module/footer.jsp" flush="false" />

</body>
</html>