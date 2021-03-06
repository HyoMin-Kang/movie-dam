<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "moviedam.board.ArticleDBBean" %>
<%@ page import = "moviedam.board.ArticleDataBean" %>
<%@ page import="moviedam.board.BoardDBBean"%>
<%@ page import="moviedam.board.BoardDataBean"%>
<%@ page import="moviedam.member.MemberDBBean"%>
<%@ page import="moviedam.member.MemberDataBean"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String title = "게시글 수정";
	int article_id = Integer.parseInt(request.getParameter("article_id"));
	String pageNum = request.getParameter("pageNum");
	int board_id = Integer.parseInt(request.getParameter("board_id"));
	String userid = (String)session.getAttribute("userid");
	
	
	ArticleDBBean dbPro = ArticleDBBean.getInstance();
	ArticleDataBean article = dbPro.updateGetArticle(article_id);

	BoardDBBean board_db = BoardDBBean.getInstance();
	BoardDataBean board = board_db.getBoard(board_id);

	MemberDBBean member_db = MemberDBBean.getInstance();
	MemberDataBean profile = member_db.getProfile(userid);
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div class="container">
	<h3>
		<%=title%>
		<small class="text-muted">Cinema Restaurant</small>
	</h3>

	<div class="row">
		<form method="post" name="updateform" action="updatePro.jsp?board_id=<%=board_id%>&pageNum=<%=pageNum%>&article_id=<%=article_id %>" onsubmit="return writeSave()" enctype="multipart/form-data">
 		<input type="hidden" name="article_id" value="<%=article_id%>"> 
	
<c:if test="<%=board_id == 1 %>">
			<div class="form-group col">
				<label for="inputCategory">카테고리</label> 
				<select class="form-control" id="inputCategory" name="category" value="<%=article.getCategory()%>">
					<option value="전체" selected="selected">전체</option>
					<option value="사담">사담</option>
					<option value="영화후기">영화후기</option>
					<option value="스포일러">스포일러</option>
					<option value="영화TMI">영화TMI</option>
					<option value="자랑하기">자랑하기</option>
					<option value="덕질공간">덕질공간</option>
				</select>
			</div>
</c:if>
			<div class="form-group col">
				<label for="inputWriter" class="col-sm-2 col-form-label">작성자</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputWriter" name="article_writer" value="<%=article.getArticle_writer() %>" readonly="readonly">
				</div>
			</div>
			<div class="form-group col">
				<label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputTitle" name="article_title" value="<%=article.getArticle_title()%>" maxlength="100">
				</div>
			</div>
<c:if test="<%=board_id == 2 %>">
			<div class="form-group col">
				<div class="form-group">
					<label for="inputLoc" class="col-sm-2 col-form-label">장소</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="searchLoc" name="search_loc" placeholder="위치를 입력하세요.">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button" onclick="searchLocation();">검색</button>
						</div>
					</div>
				</div>
				<div id="map" style="width: 500px; height: 400px;"></div>
			</div>
</c:if>
			<div class="form-group col">
				<label for="exampleTextarea">내용</label>
				<textarea class="form-control" id="inputContent" name="article_content" rows="3" value="<%=article.getArticle_content()%>"><%=article.getArticle_content()%></textarea>
			</div>
			<div class="form-group col">
				<label for="exampleInputFile">첨부파일</label> 
				<input type="file" class="form-control-file" id="inputFile" name="article_file" aria-describedby="fileHelp" accept="image/*"> 
				<small id="fileHelp" class="form-text text-muted">이미지 파일만 첨부 가능합니다.</small>
			</div>

			<button type="submit" class="btn btn-primary">작성하기</button>
			<button type="reset" class="btn btn-secondary">다시 작성</button>
			<button type="button" class="btn btn-sm btn-outline-secondary" onclick="window.location='./free_board.jsp'">목록으로</button>
		</form>
	</div>

</div>





<jsp:include page="/module/footer.jsp" flush="false" />

<jsp:include page="getMap.jsp" flush="false" />

   
</body>
</html>