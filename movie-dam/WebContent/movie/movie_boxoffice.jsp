<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	String title = "박스오피스";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<div class="container">
	<h3>
		<%=title %>
		<small class="text-muted">Box Office</small>
	</h3>
	
	<div class="row">
		<div class="form-group">
  			<select class="custom-select">
			    <option value="1" selected="selected">2018-09-07 ~ 2018-09-09</option>
			    <option value="2">2018-08-31 ~ 2018-09-02</option>
			    <option value="3">2018-08-24 ~ 2018-08-26</option>
  			</select>
		</div>
	</div>
	
	<div class="row" id="resultBoxOffice">
		
		
	</div>
</div>

<jsp:include page="/module/footer.jsp" flush="false"/>

<jsp:include page="./getBoxOffice.jsp" flush="false"/>

</body>
</html>