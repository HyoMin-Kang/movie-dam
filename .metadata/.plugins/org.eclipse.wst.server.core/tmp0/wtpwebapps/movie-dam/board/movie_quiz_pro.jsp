<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="moviedam.board.QuizDBBean" %>

<%
	request.setCharacterEncoding("utf-8");
%>
 <jsp:useBean id="answer" class="moviedam.board.AnswerDataBean">
     <jsp:setProperty name="answer" property="*"/>
 </jsp:useBean>
		
 <jsp:useBean id="quiz" class="moviedam.board.QuizDataBean">
     <jsp:setProperty name="quiz" property="*"/>
 </jsp:useBean>
 
 <%
	String mem_userid = request.getParameter("mem_userid");
	quiz.setMem_userid(mem_userid);

	QuizDBBean logon = QuizDBBean.getInstance();
	logon.insertQuiz(quiz); 
	logon.insertAnswer(answer);
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>영화담</title>
<script>alert('응모가 완료되었습니다.');
history.go(-1);</script>
</head>
<body>

</body>
</html>
                                