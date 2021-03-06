<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="moviedam.board.CommentDBBean"%>
<%@ page import="moviedam.board.CommentDataBean"%>
<%@ page import="moviedam.board.ArticleDBBean"%>
<%@ page import="moviedam.board.ArticleDataBean"%>
<%!int pageSize = 15;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "자유게시판";
	String pageNum = request.getParameter("pageNum");
	String option = request.getParameter("option");
	String search = request.getParameter("search");
	String category = request.getParameter("category");
	pageContext.setAttribute("option", option);
	pageContext.setAttribute("search", search);
%>

<%
	if (pageNum == null) {
		pageNum = "1";
	}

	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	int count = 0;
	int ccount = 0;
	int number = 0;
	int total_page = 0;
	List<ArticleDataBean> articleList = null;
	ArticleDataBean article = null;
	ArrayList<CommentDataBean> commentList = null;

	try {
		ArticleDBBean article_db = ArticleDBBean.getInstance();

		CommentDBBean comment_db = CommentDBBean.getInstance();

		count = article_db.getArticleCount(option, search, category);
		if (count > 0) {
			articleList = article_db.getArticles(startRow, pageSize, option, search, category);
		}

		number = count - (currentPage - 1) * pageSize;
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/editor-2.jpg)"></div>

<section class="dorne-single-listing-area section-padding-100">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-heading dark text-center">
					<span></span>
					<h4>Free board</h4>
					<p>총 <%=count%>개의 글 검색
					</p>
				</div>
			</div>
		</div>

		<div class="row justify-content-center mb-4">
			<div class="btn-group" role="group" aria-label="Basic example">
				<a href="free_board.jsp?category=all" id="all" class="btn btn-outline-secondary">전체</a>
				<a href="free_board.jsp?category=talk" id="talk" class="btn btn-outline-secondary">사담</a>
				<a href="free_board.jsp?category=movietalk" id="movietalk" class="btn btn-outline-secondary">영화후기</a>
				<a href="free_board.jsp?category=spoiler" id="spoiler" class="btn btn-outline-secondary">스포일러</a>
				<a href="free_board.jsp?category=movietmi" id="movietmi" class="btn btn-outline-secondary">영화TMI</a>
				<a href="free_board.jsp?category=boast" id="boast" class="btn btn-outline-secondary">자랑하기</a>
				<a href="free_board.jsp?category=hobby" id="hobby" class="btn btn-outline-secondary">덕질공간</a>
			</div>
		</div>

		<div class="row justify-content-center mb-4">
			<div class="col-12">
				<form action="free_board.jsp?pageNum=<%=currentPage%>&category=<%=category%>&option=<%=option%>&search=<%=search%>">
					<input type="hidden" name="category" value="<%=category%>">
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<select class="form-control" name="option">
									<option value="all">전체글</option>
									<option value="article_title">제목</option>
									<option value="article_content">내용</option>
									<option value="article_writer">작성자</option>
								</select>
							</div>
							<input class="form-control" type="text" name="search" placeholder="궁금한 것을 검색해보세요" <%if (search != null) {
					out.print("value=\"" + search + "\"");
				}%>>
							<div class="input-group-append">
								<input class="btn btn-dark" type="submit" value="검색">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>



		<%
			if (count == 0) {
		%>

		<div class="alert alert-danger" role="alert">게시판에 저장된 글이 없습니다.</div>

		<%
			} else {
		%>

		<table class="table table-hover">
			<colgroup>
				<col width="8%">
				<col width="10%">
				<col width="*">
				<col width="10%">
				<col width="20%">
				<col width="8%">
				<col width="8%">

			</colgroup>
			<thead>
				<tr align="center">
					<th scope="col">번호</th>
					<th scope="col">분류</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">댓글수</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<%
					int a = count / pageSize + (count % pageSize == 0 ? 0 : 1); //전체페이지 수 

							if (Integer.parseInt(pageNum) > a) {
				%>
				<jsp:forward page="error.jsp" />
				<%
					}

							for (int i = 0; i < articleList.size(); i++) {
								article = articleList.get(i);

								ccount = comment_db.getCommentCount(article.getArticle_id());
				%>
				<tr>
					<td class="text-center"><%=number--%></td>
					<%
						if (article.getCategory().equals("talk")) {
					%>
					<td class="text-center">사담</td>
					<%
						} else if (article.getCategory().equals("movietalk")) {
					%>
					<td class="text-center">영화후기</td>
					<%
						} else if (article.getCategory().equals("spoiler")) {
					%>
					<td class="text-center">스포일러</td>
					<%
						} else if (article.getCategory().equals("movietmi")) {
					%>
					<td class="text-center">영화TMI</td>
					<%
						} else if (article.getCategory().equals("boast")) {
					%>
					<td class="text-center">자랑하기</td>
					<%
						} else {
					%>
					<td class="text-center">덕질공간</td>
					<%
						}
					%>
					<td><a href="content.jsp?article_id=<%=article.getArticle_id()%>&pageNum=<%=currentPage%>&board_id=1&category=<%=category%>"><%=article.getArticle_title()%></a></td>
					<td class="text-center"><%=article.getArticle_writer()%></td>
					<td class="text-center"><%=sdf.format(article.getReg_date())%></td>
					<td class="text-center"><%=ccount%></td>
					<td class="text-center"><%=article.getArticle_hits()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>


		<%
			}
		%>
		<div class="row mb-3 mr-2 d-flex justify-content-end">
			<a class="btn btn-dark" href="writeForm.jsp?board_id=1&article_writer=${sessionScope.userid}" role="button">글쓰기</a>
		</div>

		<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center">
				<%
					if (count > 0) {
							int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
							int startPage = 1;

							if (currentPage % 10 != 0)
								startPage = (int) (currentPage / 10) * 10 + 1;
							else
								startPage = ((int) (currentPage / 10) - 1) * 10 + 1;

							int pageBlock = 10;
							int endPage = startPage + pageBlock - 1;
							if (endPage > pageCount)
								endPage = pageCount;

							if (startPage > 10) {
				%>
				<c:if test="${option eq null || search eq null}">
					<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=startPage - 10%>&category=<%=category%>">이전</a></li>
				</c:if>
				<c:if test="${option ne null || search ne null}">
					<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=startPage - 10%>&category=<%=category%>&option=<%=option%>&search=<%=search%>">이전</a></li>
				</c:if>
				<%
					}

							for (int i = startPage; i <= endPage; i++) {
								if (i == currentPage) {
				%>
				<c:if test="${option eq null || search eq null}">
					<li class="page-item active"><a class="page-link" href="free_board.jsp?pageNum=<%=i%>&category=<%=category%>"><%=i%>
							<span class="sr-only">(current)</span>
						</a></li>
				</c:if>
				<c:if test="${option ne null || search ne null}">
					<li class="page-item active"><a class="page-link" href="free_board.jsp?pageNum=<%=i%>&category=<%=category%>&option=<%=option%>&search=<%=search%>"><%=i%>
							<span class="sr-only">(current)</span>
						</a></li>
				</c:if>
				<%
					} else {
				%>
				<c:if test="${option eq null || search eq null}">
					<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=i%>&category=<%=category%>"><%=i%></a></li>
				</c:if>
				<c:if test="${option ne null || search ne null}">
					<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=i%>&category=<%=category%>&option=<%=option%>&search=<%=search%>"><%=i%></a></li>
				</c:if>
				<%
					}
							}

							if (endPage < pageCount) {
				%>
				<c:if test="${option eq null || search eq null}">
					<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=startPage + 10%>&category=<%=category%>">다음</a></li>
				</c:if>
				<c:if test="${option ne null || search ne null}">
					<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=startPage + 10%>&category=<%=category%>&option=<%=option%>&search=<%=search%>">다음</a></li>
				</c:if>
				<%
					}
						}
				%>
			</ul>
		</nav>

		<%
			} catch (Exception e) {
			}
		%>
	</div>
</section>

<jsp:include page="/module/footer.jsp" flush="false" />
<script>
$(document).ready(function() {
	$('#<%=category%>
	').addClass('active');
	});
</script>
</body>
</html>