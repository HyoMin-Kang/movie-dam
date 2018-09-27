<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
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
<% 
	for(int i=0; i<10; i++) {
%>
	<div class="modal showChart<%=i %>" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">통계 보기</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="h5 modalTitle"><span class="oldOrNew"></span> </div>
					<p>순위 증감분</p>
					<div class="modalRankInten"></div>
					<p>매출액 증감분</p>
					<div class="modalSalesInten"></div>
					<p>관객수 증감분</p>
					<div class="modalAudiInten"></div>
					<span id='colchart_diff' style='width: 450px; height: 250px; display: inline-block'></span>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<%
	}
%>
</div>

<jsp:include page="/module/footer.jsp" flush="false"/>

<jsp:include page="./getBoxOffice.jsp" flush="false"/>

</body>
</html>