<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="moviedam.member.MemberDBBean" %>


<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="member" class="moviedam.member.MemberDataBean">
     <jsp:setProperty name="member" property="*"/>
</jsp:useBean>

<%
	member.setMem_status(0); //0:회원, 1:탈퇴회원
	member.setJoin_date(new Timestamp(System.currentTimeMillis()));
	member.setProfile_url("/movie-dam/member/'+member.getMem_id()+'");
	member.setMem_type(0); //0:회원, 1:관리자
	
	MemberDBBean mem_insert = MemberDBBean.getInstance();
	mem_insert.insertMember(member);
%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>영화담</title>
</head>
<body>  

<div class="page-header">
<h1> 회원가입완료</h1>
<h4> 축하합니다. 회원가입이 완료되었습니다.</h4>
</div>

<form class="form-horizontal">
<div class="form-group">
    <div class="cong">
        <br>
        <font size="5">
            <%=member.getMem_name() %>
        </font>님 가입을 축하드립니다.
        <br>
    </div>
</div>
</form>

<div class="form-group">

<div class="col-sm-offset-4 col-sm-2 col-xs-4">
<button type="button" onClick="location.href='sessionLoginForm.jsp'" class="btn btn-defalut btn-block">로그인</button>
</div>

<div class="form-group">
<div class="col-sm-2 col-xs-4">
<button type="button" onClick="location.href='main.jsp'" class="btn btn-defalut btn-block">메인페이지로 이동</button>
</div>
</div>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/cban/assets/bootstrap-3.3.7/js/bootstrap.min.js"></script>

</body>
</html> 