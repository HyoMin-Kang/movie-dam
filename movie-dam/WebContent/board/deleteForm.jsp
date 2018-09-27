<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");

%>


<br>
<div align="center"><h4>글삭제</h4></div>
<br>
<div class="container">
<form method="POST" name="delForm" 
   action="deletePro.jsp?pageNum=<%=pageNum%>" 
   onsubmit="return deleteSave()"> 
 <table class="table table-bordered">
  <tr>
     <td align="center">
       <b>비밀번호를 입력해 주세요.</b></td>
  </tr>
  <tr>
     <td align="center">비밀번호 :   
       <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="<%=num%>"></td>
 </tr>
 <tr>
    <td align="center">
    	<button type="submit" class="btn btn-sm btn-outline-secondary">글삭제</button>
      	<button type="button" class="btn btn-sm btn-outline-secondary" onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">글목록</button>
   </td>
 </tr>  
</table> 
</form>
</div>
</body>
</html>