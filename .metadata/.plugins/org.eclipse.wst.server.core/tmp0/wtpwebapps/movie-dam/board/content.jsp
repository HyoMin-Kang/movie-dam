<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>      
<%@ page import="movie.board.BoardDBBean" %>
<%@ page import="movie.board.BoardDataBean" %>
<%@ page import ="movie.board.CommentDBBean" %>
<%@ page import ="movie.board.CommentDataBean" %>  
<%@ page import ="java.text.SimpleDateFormat" %>

<%@ page import="java.util.List" %>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>


<%    String id = request.getParameter("id");
      id = (String)session.getAttribute("id");
      
   int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");
   

   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
   
   try{
      BoardDBBean dbPro = BoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.getArticle(num);
  
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level();
%>
<!DOCTYPE html>    
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="/cban/assets/bootstrap-4.1.0/css/bootstrap.min.css">

</head>
<body>  
<br>
<div class="container">
<div class="card text-center">
  <div class="card-header">
    질문과 답변
  </div>
  <div class="card-body">
    <h4 class="card-title"></h4>
    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='board.jsp?pageNum=<%=pageNum%>'">글목록</button>
  </div>
</div>
<br>

<table class="table table-bordered">  
  <tr>
    <td>글번호</td>
    <td colspan="2">
	     <%=article.getNum()%><input type="hidden" id="num" value="<%=article.getNum()%>"></td>
    <td>조회수</td>
    <td colspan="2">
	     <%=article.getReadcount()%></td>
  </tr>
  <tr>
    <td>작성자</td>
    <td >
	     <%=article.getWriter()%></td>
	<td>분류</td>
    <td>
	     a</td>     
    <td >작성일</td>
    <td >
	     <%= sdf.format(article.getReg_date())%></td>
  </tr>
  <tr>
    <td>글제목</td>
    <td colspan="5">
	     <%=article.getSubject()%></td>
  </tr>
  <tr>
    <td>글내용</td>
    <td colspan="5">
           <pre><%=article.getContent()%></pre></td>
  </tr>

  
</table>

<div class="container">
<br>

<form action="contentPro.jsp">
<table class="table" border="1" align="center">

<tr><td colspan="3"align="center"></td></tr>
<tr>
	<td colspan="3" align="center">
	comment
	</td>
</tr>
<input type="hidden" name="ref" value="<%=article.getNum()%>">
<input type="hidden" name="pagenum" value="<%=pageNum%>">

    <tr>
       <td align="center"><%=id%></td>
          <input type="hidden" name="id" value="<%=id%>">
          <td colspan="2" align="right" style="font-size:14px;">
          <textarea class="form-control" rows="3" cols="160" name="content" ></textarea>
          <br><br><input class="btn btn-outline-secondary btn-sm" type="submit" name="register" value="리뷰작성">
          <input class="btn btn-outline-secondary btn-sm" type="reset" value="다시쓰기">
       </td>
    </tr>
<% 

	 ArrayList<CommentDataBean> Contentlist = null;
	  CommentDBBean logon = CommentDBBean.getInstance();
	  Contentlist = logon.getContentlist(num);
	  
	  for(int i=0;i<Contentlist.size();i++) {
	     CommentDataBean content = Contentlist.get(i);
	%>
			
			
			<tr>
			<td rowspan=2 align="center">a</td>
		    <td colspan=2  align="left" style="font-size:14px;">
		       <%= content.getId() %> ( <%=content.getReg() %> )
		    </td>
			 </tr>
			 <tr height="75">
			    <td colspan=2 style="font-size:14px;">
			       <%=content.getContent() %>
			    </td>
		 	</tr>

<% 
   }
  
   }catch(Exception e){
     
  } 
 %>

 </table>
 </form>

  </div>
   
</div> 

     
</body>
</html>