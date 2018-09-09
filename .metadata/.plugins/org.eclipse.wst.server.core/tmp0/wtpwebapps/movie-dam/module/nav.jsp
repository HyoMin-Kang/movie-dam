<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="frame">
<div class="header">
	<div data-role="main" class="ui-content">
	    <a href="#logpop" data-rel="popup">Login</a>
	    <div data-role="popup" id="logpop" class="ui-content" style="min-width:250px;">
	    <form method="post">
	      <div>
	        <h3>Login</h3>
	        <input type="text" name="ID" id="ID" placeholder="ID">
	        <input type="password" name="passw" id="pswd" placeholder="Password">
	        <label for="log">Keep me logged in</label>
	        <input type="checkbox" name="login" id="log" value="1" data-mini="true">
	        <input type="submit" data-inline="true" value="Login">
	        <br>
	        <a href="">회원가입</a>
	        <a href="">ID/PW찾기</a>
	        <a href="">인증메일 재발급</a>
	      </div>
	    </form>
	  </div>
	</div>
	<div class="nav">
	   <ul id ="menu">
	       <li><a href="">영화소개</a>
	        <ul>
	            <li><a href="">영화 목록</a></li>
	            <li><a href="">박스오피스</a></li>
	        </ul>
	       </li>
	       <li><a href="">영화토론</a>
	        <ul>
	            <li><a href="">찬반토론</a></li>
	            <li><a href="">토론배틀</a></li>
	        </ul>
	       </li>
	    <li><a href=""><img src="#"></a></li>
	    <li><a href="">영화수다</a>
	     <ul>
	        <li><a href="">자유게시판</a></li>
	        <li><a href="">영화퀴즈</a></li>
	        <li><a href="">극장맛집</a></li>
	        <li><a href="">굿즈정보</a></li>
	     </ul>
	    </li>
	    <li><a href="">영화관련정보</a>
	     <ul>
	      <li><a href="">시사회</a></li> 
	      <li><a href="">무대인사</a></li>
	      <li><a href="">영화이슈</a></li> 
	     </ul>
	    </li>
	   </ul>
	</div>
</div>
</div>