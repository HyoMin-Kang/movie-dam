<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="moviedam.member.MemberDBBean" %>

<% request.setCharacterEncoding("utf-8");%>

<%
    String mem_userid = request.getParameter("mem_userid");
	String mem_pwd  = request.getParameter("mem_pwd"); 
	
	MemberDBBean logon = MemberDBBean.getInstance();
    int check= logon.userCheck(mem_userid, mem_pwd); 

	if(check == 1){ //로그인 성공
		session.setAttribute("mem_userid", mem_userid);
		response.sendRedirect("../main.jsp");
	} else { //로그인 실패
%>
	<script> 
		alert("아이디 혹은 비밀번호가 올바르지 않습니다.");
		history.go(-1); 
	</script>
<% 
	}
%>