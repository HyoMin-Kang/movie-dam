<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="movie.board.BoardDBBean" %>
<%@ page import="movie.board.BoardDataBean" %>
<%@ page import="movie.board.CommentDBBean" %>
<%@ page import="movie.board.CommentDataBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>


<%    String id = request.getParameter("id");
      id = (String)session.getAttribute("id");
      String select = request.getParameter("select");%>
 
      
<%!
    int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
	request.setCharacterEncoding("utf-8");
	String title = "게시판변경";
	
    String pageNum = request.getParameter("pageNum");
    String option = request.getParameter("option");
    
    String search = request.getParameter("search");
   

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;
    int endRow = currentPage * pageSize;
    int count = 0;
    int ccount =0;
    int number = 0;
    int total_page = 0;
    List<BoardDataBean> articleList = null; 
    
    BoardDBBean dbPro = BoardDBBean.getInstance();
    count = dbPro.getArticleCount(option,search); //전체 글 수
    
    CommentDBBean dbPro2 = CommentDBBean.getInstance();
    ccount = dbPro.getCommentCount();
    
    
    if (count > 0) {
        articleList = dbPro.getArticles(startRow, pageSize,option,search);
    }
    
    
	
	number = count-(currentPage-1)*pageSize;
	
%>

<!DOCTYPE html>    
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="/cban/assets/bootstrap-4.1.0/css/bootstrap.min.css">

</head>
<body>  


<div class="container">
<%
   try{
	   if(id==null || id.equals("")){
%>

    <div class="list_serch form-inline" align="center">
    	<form>
        <select class="form-control" name="option">
	        <option value="all">전체글</option>
	        <option value="subject">제목</option>
	        <option value="content">내용</option>
	        <option value="writer">작성자</option>
        </select>
            <input class="form-control" type="text" name="search" size=30" placeholder="궁금한 것을 검색해보세요" aria-label="Search">&nbsp;
            <input class="btn btn-outline-secondary" type="submit" value="검색"/> 
        </form>
    </div>

  


<%
   }else{
%>

    <div class="list_serch form-inline" align="center">
    	<form>
        <select class="form-control" name="option">
	        <option value="all">전체글</option>
	        <option value="subject">제목</option>
	        <option value="content">내용</option>
	        <option value="writer">작성자</option>
        </select>
            <input class="form-control" type="text" name="search" size=30" placeholder="궁금한 것을 검색해보세요">&nbsp;
            <input class="btn btn-outline-secondary" type="submit" value="검색"/> 
        </form>   
    </div>  
    
<% 
   }
   }catch(Exception e){
	e.printStackTrace();
}
%>
<br>
<input class="btn btn-outline-secondary" type="submit" value="전체"/>
<input class="btn btn-outline-secondary" type="submit" value="사담"/>
<input class="btn btn-outline-secondary" type="submit" value="예고편"/>
<input class="btn btn-outline-secondary" type="submit" value="포스터"/>
<input class="btn btn-outline-secondary" type="submit" value="영화감상문"/>
<input class="btn btn-outline-secondary" type="submit" value="스포일러"/>
<div align="center"><i class="fas fa-list"></i> 글목록(전체 글:<%=count%>)</div>

<div align="right">
<a class="btn btn-sm btn-outline-secondary" href="writeForm.jsp" role="button" ><i class="fas fa-edit"></i>질문하기</a>
</div>
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
       BoardDataBean article = articleList.get(i);
%>
   <tr>
    <td> <%=number--%></td>
    <td> <%=select%></td>
<%
	int wid=0; 
	if(article.getRe_level()>0){
	   wid = 10 * (article.getRe_level());
%>
	<td style="text-indent:<%=wid%>px">
	  <i class="fab fa-replyd"></i>
<%  } else {%>
	<td style="text-indent:<%=wid%>px">
<%  }%>
           
      <a href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
           <%=article.getSubject()%></a> 
<% if(article.getReadcount()>=20){%>
         <span class="badge badge-danger">N</span><%}%> </td>
    <td> 
       <a href="mailto:<%=article.getEmail()%>">
                     <%=article.getWriter()%></a></td>
    <td class="text-center"><%=sdf.format(article.getReg_date())%></td>
     <td class="text-center"><%=ccount%></td>
      <td class="text-center">a</td>
    <td class="text-right"><%=article.getReadcount()%></td>
    
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
    	<li class="page-item"><a class="page-link" href="board.jsp?pageNum=<%=startPage - 10 %>">이전</a></li>
<%      }
    
    for (int i = startPage ; i <= endPage ; i++) {
    	if(i == currentPage) {
%>
		<li class="page-item active">
	      <a class="page-link" href="board.jsp?pageNum=<%=i %>"><%=i %> <span class="sr-only">(current)</span></a>
	    </li>
<%        		
    	} else {
%>	
		<li class="page-item"><a class="page-link" href="board.jsp?pageNum=<%=i %>"><%=i %></a></li>
<%        		
    	}
  }
    
    if (endPage < pageCount) {  %>
    <li class="page-item"><a class="page-link" href="board.jsp?pageNum=<%=startPage + 10 %>">다음</a></li>
<%
    }
}
%>
	</ul>
</nav>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="/cban/assets/bootstrap-4.1.0/js/bootstrap.min.js"></script>
<script src="/cban/assets/fontawesome-free-5.0.9/svg-with-js/js/fontawesome-all.js"></script>
<script src="/cban/assets/script.js"></script>

</body>
</html>