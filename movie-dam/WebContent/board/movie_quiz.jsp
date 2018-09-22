<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화 퀴즈";
	String userid = request.getParameter("userid");
%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	String today = sdf.format(new java.util.Date());
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<div class="container">
	<h3>
		<%=title%>
		<small class="text-muted">Movie Quiz</small>
	</h3>

	<div class="row">
		<form name="movieQuiz" method="post" action="movie_quiz_pro.jsp">
			<p><%=today %></p>
			<table class="table">
				<tr>
					<th>회차정보</th>
					<td align="left"><input type="text" size="3"
						class="form-control" name="episode" placeholder="회차"
						required="required">회</td>
				</tr>
				<tr>
					<th>문제 1.</th>
					<td align="left"><input type="text" size="50"
						class="form-control" name="question1" placeholder="문제를 입력하세요."
						required="required"></td>
				</tr>
				<tr>
					<th>정답</th>
					<td align="left">
						<div class="form-group row">
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio1" value="1"> 
								<input type="text" name="answer1" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio1" value="2"> 
								<input type="text" name="answer2" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio1" value="3"> 
								<input type="text" name="answer3" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio1" value="4"> 
								<input type="text" name="answer4" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
						</div>
					</td>
				<tr>
					<th>문제 2.</th>
					<td align="left">
						<input type="text" size="50" class="form-control" name="question2" placeholder="문제를 입력하세요." required="required">
					</td>
				</tr>
				<tr>
					<th>정답</th>
					<td align="left">
						<div class="form-group row">
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio2" value="1" disabled="disabled"> 
								<input type="text" name="answer5" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio2" value="2" disabled="disabled"> 
								<input type="text" name="answer6" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio2" value="3" disabled="disabled">  
								<input type="text" name="answer7" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio2" value="4" disabled="disabled"> 
								<input type="text" name="answer8" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
						</div>
					</td>
				<tr>
					<th>문제 3.</th>
					<td align="left">
						<input type="text" size="50" class="form-control" name="question3" placeholder="문제를 입력하세요." required="required">
					</td>
				</tr>
				<tr>
					<th>정답</th>
					<td align="left">
						<div class="form-group row">
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio3" value="1" disabled="disabled"> 
								<input type="text" name="answer9" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio3" value="2" disabled="disabled"> 
								<input type="text" name="answer10" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio3" value="3" disabled="disabled"> 
								<input type="text" name="answer11" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
							<p>
								<label class="radio-inline"> 
								<input type="radio" name="radio3" value="4" disabled="disabled"> 
								<input type="text" name="answer12" placeholder="답을 입력하세요." required="required">
								</label>
							</p>
						</div>
					</td>
				</tr>
			</table>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-2 col-xs-4">
					<button type="submit">제출하기</button>
				</div>
			</div>
		</form>
	</div>
</div>


<jsp:include page="/module/footer.jsp" flush="false" />

</body>
</html>