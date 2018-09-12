<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "무대인사";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<div class="container">
	<h3>
		<%=title %>
		<small class="text-muted">Movie Stage</small>
	</h3>
	
	<div class="row">

		<iframe
			src="https://calendar.google.com/calendar/embed?title=%EB%AC%B4%EB%8C%80%EC%9D%B8%EC%82%AC&amp;showNav=0&amp;showCalendars=0&amp;showTz=0&amp;height=800&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=takhyewon%40gmail.com&amp;color=%231B887A&amp;ctz=Asia%2FSeoul"
			style="border-width: 0" width="900" height="800" frameborder="0"
			scrolling="no"></iframe>

	</div>
</div>


<jsp:include page="/module/footer.jsp" flush="false"/>

</body>
</html>