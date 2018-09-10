<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String pageTitle = request.getParameter("title");	
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title><%=pageTitle %></title>

<!-- Favicon -->
<link rel="shortcut icon" href="/movie-dam/assets/images/favicon/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144" type="image/x-icon" href="/movie-dam/assets/images/favicon/apple-touch-icon.png">

<!-- All CSS Plugins -->
<link rel="stylesheet" type="text/css" href="/movie-dam/assets/css/plugin.css">

<!-- Main CSS Stylesheet -->
<link rel="stylesheet" type="text/css" href="/movie-dam/assets/css/style.css">

<!-- Google Web Fonts  -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">
</head>
<body>
        
