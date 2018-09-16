<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="moviedam.board.ArticleDBBean"%>
<%@ page import="moviedam.board.ArticleDataBean"%>
<%@ page import="moviedam.board.CommentDBBean"%>
<%@ page import="moviedam.board.CommentDataBean"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="/cban/assets/bootstrap-4.1.0/css/bootstrap.min.css">
</head>

<body>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	id = (String) session.getAttribute("id");
%>

<%
	int article_id = Integer.parseInt(request.getParameter("article_id"));
	String pageNum = request.getParameter("pageNum");

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

	try {
		ArticleDBBean dbPro = ArticleDBBean.getInstance();
		ArticleDataBean article = dbPro.getArticle(article_id);
%>

	<br>
	<div class="container">
		<div class="card text-center">
			<div class="card-header">질문과 답변</div>
			<div class="card-body">
				<h4 class="card-title"></h4>
				<button type="button" class="btn btn-sm btn-outline-secondary"
					onclick="location.href='board.jsp?pageNum=<%=pageNum%>'">글목록</button>
			</div>
		</div>
		<br>

		<table class="table table-bordered">
			<tr>
				<td>글번호</td>
				<td colspan="2">
				<%=article.getArticle_id()%>
				<input type="hidden" id="article_id" value="<%=article.getArticle_id()%>"></td>
				<td>조회수</td>
				<td colspan="2"><%=article.getArticle_hits()%></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%=article.getArticle_writer()%></td>
				<td>분류</td>
				<td><%=article.getCategory()%></td>
				<td>작성일</td>
				<td><%=sdf.format(article.getReg_date())%></td>
			</tr>
			<tr>
				<td>글제목</td>
				<td colspan="5"><%=article.getArticle_title()%></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td colspan="5"><pre><%=article.getArticle_content()%></pre></td>
			</tr>


		</table>

		<div class="container">
			<br>

			<form action="contentPro.jsp">
				<input type="hidden" name="cmt_ref" value="<%=article.getArticle_id()%>">
				<input type="hidden" name="pagenum" value="<%=pageNum%>"> 
				

				<table class="table" border="1" align="center">
					<tr>
						<td colspan="3" align="center"></td>
					</tr>

					<tr>
						<td colspan="3" align="center">comment</td>
					</tr>

					<tr>
						<td align="center">
						<input type="text" class="form-control" size="10" maxlength="10" name="cmt_writer">
						</td>
						<td colspan="2" align="right" style="font-size: 14px;">
						<textarea class="form-control" rows="3" cols="160" name="cmt_content"></textarea>
						<br>
						<br>
						<input class="btn btn-outline-secondary btn-sm" type="submit" name="register" value="리뷰작성"> 
						<input class="btn btn-outline-secondary btn-sm" type="reset" value="다시쓰기"></td>
					</tr>
					<%
						ArrayList<CommentDataBean> Contentlist = null;
							CommentDBBean logon = CommentDBBean.getInstance();
							Contentlist = logon.getContentlist(article_id);

							for (int i = 0; i < Contentlist.size(); i++) {
								CommentDataBean content = Contentlist.get(i);
					%>


					<tr>
						<td rowspan=2 align="center">img</td>
						<td colspan=2 align="left" style="font-size: 14px;">
							<b><%=content.getCmt_writer()%></b> (<%=content.getCmt_date()%>)</td>
					</tr>
					<tr height="75">
						<td colspan=2 style="font-size: 14px;"><%=content.getCmt_content()%></td>
					</tr>

					<%
						}

						} catch (Exception e) {

						}
					%>

				</table>
			</form>

		</div>

	</div>


</body>
</html>