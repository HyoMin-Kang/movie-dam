<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>    
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="/cban/assets/bootstrap-4.1.0/css/bootstrap.min.css">

</head>
<body>  


<% 
  int num = 0, ref = 1, re_step = 0, re_level = 0;
  String strV = "";
  try{
    if(request.getParameter("num")!=null){
	   num=Integer.parseInt(request.getParameter("num"));
	   ref=Integer.parseInt(request.getParameter("ref"));
	   re_step=Integer.parseInt(request.getParameter("re_step"));
	   re_level=Integer.parseInt(request.getParameter("re_level"));
    }
%>
<br>
<div align="center"><h4>질문하기</h4></div><br>
<form method="post" name="writeform" 
      action="writePro.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_step" value="<%=re_step%>">
<input type="hidden" name="re_level" value="<%=re_level%>">

<div class="container">

<table class="table">
   <tr>
    <td align="right" colspan="2" >
    	<button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='list.jsp'">글목록</button> 
   </td>
   </tr>
   <tr>
    <th>분류</th>
    <td align="left">
       <select class="form-control form-control-sm" name="select">
       	<option value="전체" selected="selected">전체</option>
       	<option value="사담">사담</option>
       	<option value="예고편">예고편</option>
       	<option value="포스터">포스터</option>
       	<option value="영화감상문">영화감상문</option>
       	<option value="스포일러">스포일러</option>
       	</select>
  </tr>
   <tr>
    <th>이 름</th>
    <td align="left">
       <input type="text" class="form-control" size="10" maxlength="10" 
          name="writer" style="ime-mode:active;"></td><!--active:한글-->
  </tr>
  <tr>
    <th>제 목</th>
    <td align="left">
    <%
      if(request.getParameter("num")==null) 
    	 strV = "";
      else
    	 strV = "[답변]";
    %>
    <input type="text" class="form-control" size="40" maxlength="50" name="subject"
         value="<%=strV%>" style="ime-mode:active;"></td>	
  </tr>
  <tr>
    <th>Email</th>
    <td align="left">
       <input type="text" class="form-control" size="40" maxlength="30" name="email"
           style="ime-mode:inactive;" ></td><!--inactive:영문-->
  </tr>
  <tr>
    <th>내 용</th>
    <td align="left">
     <textarea name="content" class="form-control" rows="13" cols="40" 
              style="ime-mode:active;"></textarea> </td>
  </tr>
  <tr>
    <th>비밀번호</th>
    <td align="left">
     <input type="password" class="form-control" size="8" maxlength="12" 
             name="passwd" style="ime-mode:inactive;"> 
	 </td>
  </tr>
  <tr>      
    <td colspan=2 align="center">
    <button type="submit" class="btn btn-sm btn-outline-secondary">글쓰기</button> 
    <button type="reset" class="btn btn-sm btn-outline-secondary">다시작성</button>  
    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="window.location='list.jsp'">목록보기</button>  
    
    </td>
  </tr>
</table>  
</div>  

 <%
  }catch(Exception e){}
%>     
</form>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="/cban/assets/bootstrap-4.1.0/js/bootstrap.min.js"></script>  
<script src="/cban/assets/fontawesome-free-5.0.9/svg-with-js/js/fontawesome-all.js"></script>    
</body>
</html>