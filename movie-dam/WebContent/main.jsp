<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화담";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>


<div id="main">
<div class="container">
<jsp:include page="/module/nav.jsp" flush="false"/>
	<div class="row">
	
	</div>
</div>
</div>

<jsp:include page="/module/footer.jsp" flush="false"/>