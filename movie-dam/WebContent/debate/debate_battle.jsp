<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "토론 배틀";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/editor-2.jpg)"></div>

<section class="dorne-listing-destinations-area section-padding-100-50">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-heading dark text-center">
					<h4>Debate Battle</h4>
					<p>좀 더 심도있는 토론을 다양한 사람과 나눌 수 있습니다. 토론하고 싶은 주제를 직접 등록하고 참여해 보세요.</p> <br>
				</div>
			</div>
		</div>

		<div class="row mb-4 justify-content-center">
			<div class="col-12">
				<form>
					<div class="form-group">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<select class="form-control" name="option">
									<option value="all">전체글</option>
									<option value="cb_title">제목</option>
									<option value="cb_content">내용</option>
									<option value="cb_writer">작성자</option>
								</select>
							</div>
							<input class="form-control" type="text" name="search" placeholder="관심있는 토론 주제를 검색해 보세요.">
							<div class="input-group-append">
								<input class="btn btn-dark" type="submit" value="검색">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>

		<div class="row">
			<div class="col-12">
				<ul class="list-unstyled">
					<li class="media">
						<div class="media-body">
							<h5 class="mt-0 mb-1">‘나의 라임 오렌지나무’ 에서 제제가 아버지에게 담배를 사드린 것은 옳은 일일까?</h5>
							<div class="form-group row d-flex justify-content-end">
								<button class="btn btn-outline-light" onclick="document.location.href=''">참여하기</button>
							</div>
							<div class="hashtag">
								<a type="buttn" class="badge badge-primary">#미성년자</a>
								<a type="buttn" class="badge badge-primary">#가족</a>
								<a type="buttn" class="badge badge-primary">#가정폭력</a>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<jsp:include page="/module/footer.jsp" flush="false" />

</body>
</html>