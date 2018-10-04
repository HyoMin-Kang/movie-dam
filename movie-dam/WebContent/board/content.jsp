<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="moviedam.board.ArticleDBBean"%>
<%@ page import="moviedam.board.ArticleDataBean"%>
<%@ page import="moviedam.board.ArticlelikeDataBean"%>
<%@ page import="moviedam.board.CommentDBBean"%>
<%@ page import="moviedam.board.CommentDataBean"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>


<%
	request.setCharacterEncoding("utf-8");
	String title = "게시글 상세보기";
	String userid = (String)session.getAttribute("userid");
	String category = request.getParameter("category");
	int board_id = Integer.parseInt(request.getParameter("board_id"));
	int count = 0;
	int like_count = 0;
	String like_type = "";
%>

<%
	int article_id = Integer.parseInt(request.getParameter("article_id"));
	String pageNum = request.getParameter("pageNum");
	
	if (pageNum == null) {
        pageNum = "1";
    }

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

	try {
		ArticleDBBean article_db = ArticleDBBean.getInstance();
		ArticleDataBean article = article_db.getArticle(article_id);

		like_type = article_db.getLike_type(board_id, article_id, userid);
		like_count = article_db.getlikeCount(board_id,article_id);
%>

<%
	ArrayList<CommentDataBean> commentList = null;
		CommentDBBean cmt_db = CommentDBBean.getInstance();
		count = cmt_db.getCommentCount(article_id);
		if (count > 0) {
			commentList = cmt_db.getComments(article_id);
		}
		
	try{
		  if(session.getAttribute("userid")==null)
			  userid="not";
		  else
			  userid= (String)session.getAttribute("userid");    
		}catch(Exception e){}	
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<!-- ***** Breadcumb Area Start ***** -->
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/hero-1.jpg)"></div>
<!-- ***** Breadcumb Area End ***** -->

<section class="dorne-single-listing-area section-padding-100">
<div class="container">
	<div class="row">
		<div class="col-12">
		    <div class="section-heading dark text-center">
		    	<span></span>
				<h4>Free board</h4>
				<p></p>
			</div>
		</div>
	</div>
	
	<div class="row justify-content-center">
		<div class="col-12 col-lg-8">
			<div class="single-listing-content">
				<a href="#"><span class="badge badge-dark"><%=article.getCategory()%></span></a>
				<div class="listing-title">
	                <h4><%=article.getArticle_title()%></h4>
	                <span>작성자 <a href="/movie-dam/member/profile.jsp?mem_userid=<%=article.getArticle_writer()%>"><%=article.getArticle_writer()%></a>&nbsp;(<%=sdf.format(article.getReg_date())%>)</span>
	                <span><i class="fas fa-eye"></i> <%=article.getArticle_hits() %></span>
	            </div>
	            
	            <div class="overview-content mt-50" id="overview">
	            	<p><%=article.getArticle_content().replace("\r\n", "<br>") %></p>
				</div>
				
				<table class="table table-bordered">

	
<%
if(article.getArticle_file() != null) {
%>
					<tr>
						<td colspan="6"><img src="/movie-dam/imageFolder/<%=article.getArticle_file()%>" width="250px"></td>
					</tr>
					<tr>
						<td colspan="6">첨부된 파일 : <a href="#"><%=article.getArticle_file() %></a></td>
					</tr>
<% } %>		
				</table>
				
				<div>

<% if (like_type.equals("N")) { %>
					<a id="like" href=""><i id="likeIcon" class="far fa-heart fa-lg"></i></a><span id="likeCount"><%=like_count %>개</span>
<% } else if (like_type.equals("Y")) {%>
					<a id="like" href=""><i id="likeIcon" class="fas fa-heart fa-lg" style="color:red;"></i></a><span id="likeCount"><%=like_count %>개</span>
<% } %>
				</div>
			</div>
<%
if(userid.equals("not")) {
%>
			<button type="button" class="btn btn-sm btn-outline-secondary" disabled="disabled">수정</button>
			<button type="button" class="btn btn-sm btn-outline-secondary" disabled="disabled">삭제</button>
<%}else{ %>			
			<button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='updateForm.jsp?board_id=<%=board_id%>&article_id=<%=article_id%>&pageNum=<%=pageNum%>&article_writer=${sessionScope.userid}'">수정</button>
			<button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='deletePro.jsp?board_id=<%=board_id%>&article_id=<%=article_id%>&pageNum=<%=pageNum%>&article_writer=${sessionScope.userid}'">삭제</button>
<%} %>	
			<button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='free_board.jsp?pageNum=<%=pageNum%>&category=<%=category%>'">글목록</button>
		</div>
		
		<div class="row">
	
			<form action="contentPro.jsp?article_id=<%=article_id%>">
				<input type="hidden" name="cmt_ref" value="<%=article.getArticle_id()%>"> 
				<input type="hidden" name="pageNum" value="<%=pageNum%>">
				<input type="hidden" name="cmt_writer" value="<%=userid %>">
				<input type="hidden" name="board_id" value="<%=board_id %>">
				<input type="hidden" name="category" value="<%=category %>">
				
				<table class="table">
					<tr>
						<td colspan="3" align="center"></td>
					</tr>
	
					<tr>
						<td colspan="3" align="center">comment(<%=count%>)
						</td>
					</tr>
	
					<tr>
						<td height="100" align="center"><%=userid%></td>
						<td colspan="2" align="right" style="font-size: 14px;">
							<textarea class="form-control" rows="3" cols="160" name="cmt_content"></textarea>
							<input class="btn btn-outline-secondary btn-sm" type="submit" name="register" value="댓글 작성"> 
							<input class="btn btn-outline-secondary btn-sm" type="reset" value="다시쓰기">
						</td>
					</tr>
				</table>
			</form>	
					<%
						if (commentList != null && commentList.size() > 0) {
								for (int i = 0; i < commentList.size(); i++) {
									CommentDataBean comment = commentList.get(i);
					%>
			<form name="updatecomment" method="post" action="updateCommentPro.jsp"> 
			
				<table class="table">		
					<tr>
						<td rowspan=2 align="center">img</td>
						<td colspan=2 align="left" style="font-size: 14px;">
							<b><%=comment.getCmt_writer()%></b> (<%=comment.getCmt_date()%>)
						</td>
					</tr>
					<tr height="75">
						<td colspan=2 style="font-size: 14px;"><%=comment.getCmt_content()%></td>
					</tr>
<% 
	if(userid.equals(comment.getCmt_writer())) {
%>					
					<tr>
						<td colspan=3 align="right">
							<button type="button" class="btn btn-sm btn-outline-secondary" onclick="updateOpen(<%=comment.getCmt_id()%>, <%=article_id%>, <%=pageNum%>, <%=board_id%>, <%=category%>);">수정</button>
							<button type="button" class="btn btn-sm btn-outline-danger" 
								onclick="document.location.href='deleteCommentPro.jsp?article_id=<%=article_id%>&cmt_id=<%=comment.getCmt_id()%>&userid=<%=userid%>&pageNum=<%=pageNum%>&cmt_ref=<%=article_id%>&pageNum=<%=pageNum%>&board_id=<%=board_id%>&category=<%=category%>'">삭제</button>
						</td>
					</tr>	
<%
	} else {
%>
					<tr>
						<td colspan=3 align="right">
							<button type="button" class="btn btn-sm btn-outline-secondary" disabled="disabled">수정</button>
							<button type="button" class="btn btn-sm btn-outline-danger" disabled="disabled">삭제</button>
						</td>
					</tr>	
<%
	}
%>
				
				<%
					}
						}

					} catch (Exception e) {

					}
				%>

				</table>
			</form>
	
		</div>
	</div>
</div>
</section>

<jsp:include page="/module/footer.jsp" flush="false" />

<script>
function updateOpen(cmt_id, article_id, pageNum, board_id, category) {
	url = 'updateCommentForm.jsp?cmt_id=' + cmt_id + '&article_id=' + article_id + '&pageNum=' + pageNum + '&board_id=' + board_id + '&category=' + category;
	window.open(url, '댓글 수정', 'height=200, width=400, scrollbars=no, resizable=no');
}
</script>	

<script>
$('#like').click(function() {
	$.ajax({
		type: 'POST',
        url: 'content_like_pro.jsp',
        dataType:'json',
        async: false,
        data: {
        	'board_id': <%=board_id%>,
        	'article_id': <%=article_id%>,
        	'mem_id': '<%=userid%>',
        	'like_type': '<%=like_type%>'
        },
        success: function(response){
        	alert(response); 

        	if(response.equals('Y')) {
        		$('#likeIcon').removeClass('far');
                $('#likeIcon').addClass('fas');
                $('#likeIcon').attr('style', 'color:red');
        	} else if(response.equals('N')) {
        		$('#likeIcon').removeClass('fas');
                $('#likeIcon').addClass('far');
                $('#likeIcon').attr('style', 'color:black');
        	}
        	
/*             $('#likeCount').html(response+'개'); */
        },
        error: function(request, status, error){
        	if (request.status == '200') {
				alert('no data');
			} else {
				alert('code:' + request.status + "\n" + 'message:' + request.responseText + '\n' + 'error:' + error);
			}
        }
	}); 
});
</script>
</body>
</html>