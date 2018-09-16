<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*"%>    
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.List"%>
<%@ page import="moviedam.board.CommentDBBean" %>
<%@ page import="moviedam.board.CommentDataBean" %>
<%@ page import="moviedam.board.ArticleDBBean" %>
<%@ page import="moviedam.board.ArticleDataBean" %>
<%
	request.setCharacterEncoding("utf-8");
	String title = "자유게시판";	
	String pageNum = request.getParameter("pageNum");
	String select = request.getParameter("select");
    String option = request.getParameter("option");
    String search = request.getParameter("search");
%>
<%!
    int pageSize = 10;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
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

	ArticleDBBean dbPro = ArticleDBBean.getInstance();
	count = dbPro.getArticleCount(option, search); //전체 글 수

	CommentDBBean dbPro2 = CommentDBBean.getInstance();
	ccount = dbPro.getCommentCount();

	if (count > 0) {
		articleList = dbPro.getArticles(startRow, pageSize, option, search);
	}

	number = count - (currentPage - 1) * pageSize;
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<div class="container">
	<h3>
		<%=title %>
		<small class="text-muted">Free board</small>
	</h3>
	<div class="list_serch form-inline" align="center">
    	<form>
        <select class="form-control" name="option">
	        <option value="all">전체글</option>
	        <option value="subject">제목</option>
	        <option value="content">내용</option>
	        <option value="writer">작성자</option>
        </select>
            <input class="form-control" type="text" name="search" size="30" placeholder="궁금한 것을 검색해보세요">
            <input class="btn btn-outline-secondary" type="submit" value="검색"/> 
        </form>   
    </div>  
	<div class="btn-group btn-group-toggle" data-toggle="buttons">
		<label class="btn btn-primary active"> <input type="radio" name="options" id="option2" autocomplete="off" checked="checked"> 전체</label> 
		<label class="btn btn-primary"> <input type="radio" name="options" id="option2" autocomplete="off"> 사담</label> 
		<label class="btn btn-primary"> <input type="radio" name="options" id="option2" autocomplete="off"> 영화감상문</label>
		<label class="btn btn-primary"> <input type="radio" name="options" id="option2" autocomplete="off"> 스포일러</label>
		<label class="btn btn-primary"> <input type="radio" name="options" id="option2" autocomplete="off"> 예고편</label>
		<label class="btn btn-primary"> <input type="radio" name="options" id="option2" autocomplete="off"> 포스터</label>
	</div>
	<div class="btn-group btn-group-toggle" data-toggle="buttons">
		<label class="btn btn-primary active"> <input type="radio" name="options" id="option1" autocomplete="off" checked="checked">최신순</label> 
		<label class="btn btn-primary"> <input type="radio" name="options" id="option2" autocomplete="off">댓글순</label> 
		<label class="btn btn-primary"> <input type="radio" name="options" id="option3" autocomplete="off">추천순</label> 
		<label class="btn btn-primary"> <input type="radio" name="options" id="option4" autocomplete="off"> 조회순</label>
	</div>

	<div class="row">

<% if (count == 0) { %>

		<div class="alert alert-danger" role="alert">
		  게시판에 저장된 글이 없습니다.
		</div>

<% } else {%>

<table class="table table-bordered table-hover">
	<colgroup>
		<col width="8%">
		<col width="8%">
		<col width="*">
		<col width="10%">
		<col width="20%">
		<col width="8%">
		<col width="8%">
		<col width="8%">
		
	</colgroup>
	<thead >
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">분류</th>
	      <th scope="col">제목</th>
	      <th scope="col">작성자</th>
	      <th scope="col">작성일</th>
	      <th scope="col">댓글수</th>
	      <th scope="col">추천수</th>
	      <th scope="col">조회수</th>
	      
	    </tr>
	  </thead>
	  <tbody>
<%  
	int a = count / pageSize + (count % pageSize == 0 ? 0 : 1); //전체페이지 수 
	
	if(Integer.parseInt(pageNum) > a){ %>
		<jsp:forward page="error.jsp"/>
	<% }
	
   for (int i = 0 ; i < articleList.size() ; i++) {
	   ArticleDataBean article = articleList.get(i);
%>
   <tr>
    <td> <%=number--%></td>
    <td> <%=article.getCategory()%></td>

           
      <td><a href="content.jsp?num=<%=article.getArticle_id()%>&pageNum=<%=currentPage%>"><%=article.getArticle_title()%></a> </td>
<% if(article.getArticle_gets()>=20){%>
         <span class="badge badge-danger">N</span><%}%> </td>
    <td> 
       <%=article.getArticle_writer()%></a></td>
    <td class="text-center"><%=sdf.format(article.getReg_date())%></td>
     <td class="text-center"><%=ccount%></td>
      <td class="text-center"><%=article.getArticle_gets() %></td>
    <td class="text-right"><%=article.getArticle_hits()%></td>
    
  </tr>
<%}%>
</tbody>
</table>
<%}%>

<nav aria-label="Page navigation">
  <ul class="pagination justify-content-center">
<%
    if (count > 0) {
    	//전체 페이지수 구하기//50개=>5페이지, 51~59개=>6페이지
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
        
    	if(pageCount < currentPage){
    		currentPage = pageCount;
    	}
       //한 페이지에 보여지는 시작페이지 구하기
		int startPage =1;
		
		if(currentPage % 10 != 0)
           startPage = (int)(currentPage/10)*10 + 1;
		else
           startPage = ((int)(currentPage/10)-1)*10 + 1; 
           
        int pageBlock = 10; //한 페이지에 보여줄 페이지수 설정
        
		//한 페이지에 보여지는 끝페이지 구하기
		int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) {
        	endPage = pageCount; 
        } 
        
        
        if (startPage > 10) { %>
    	<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=startPage - 10 %>">이전</a></li>
<%      }
    
    for (int i = startPage ; i <= endPage ; i++) {
    	if(i == currentPage) {
%>
		<li class="page-item active">
	      <a class="page-link" href="free_board.jsp?pageNum=<%=i %>"><%=i %> <span class="sr-only">(current)</span></a>
	    </li>
<%        		
    	} else {
%>	
		<li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=i %>"><%=i %></a></li>
<%        		
    	}
  }
    
    if (endPage < pageCount) {  %>
    <li class="page-item"><a class="page-link" href="free_board.jsp?pageNum=<%=startPage + 10 %>">다음</a></li>
<%
    }
}
%>
	</ul>
</nav>

	<a class="btn btn-sm btn-outline-secondary" href="writeForm.jsp?board_id=1&article_writer=${sessionScope.userid}" role="button" ><i class="fas fa-edit"></i>글쓰기</a>
		
	</div>
</div>


<jsp:include page="/module/footer.jsp" flush="false" />
</body>
</html>