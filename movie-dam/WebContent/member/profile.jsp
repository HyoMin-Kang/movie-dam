<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="moviedam.member.MemberDBBean" %>
<%@ page import="moviedam.member.MemberDataBean" %>
<%@ page import="moviedam.member.FollowDBBean" %>
<%@ page import="moviedam.member.FollowDataBean" %>

<%
	request.setCharacterEncoding("utf-8");
	String userid = (String)session.getAttribute("userid");
	String mem_userid = request.getParameter("mem_userid");
	String fol_type = "";
	
	try{
		MemberDBBean mem_db = MemberDBBean.getInstance(); 
		MemberDataBean profile =  mem_db.getProfile(mem_userid);
		FollowDBBean fol_db = FollowDBBean.getInstance(); 
		fol_type =  fol_db.getFol_type(userid,mem_userid);

		String title = profile.getMem_nickname()+"님의 프로필";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title%>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<!-- ***** Breadcumb Area Start ***** -->
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/hero-1.jpg)"></div>
<!-- ***** Breadcumb Area End ***** -->

<!-- ***** Listing Destinations Area Start ***** -->
<section class="dorne-listing-destinations-area section-padding-100-50">
<div class="container">
	<div class="row justify-content-center">
		<div class="col-12 col-sm-6 col-lg-4">
	        <div class="single-features-area mb-50">
	            <img src="/movie-dam/assets/img/profile-img/<%=profile.getMem_img() %>" alt="">
	            <div class="price-start">
	            	<p>최근 접속시간</p>
	            </div>
	            <div class="feature-content d-flex align-items-center justify-content-between">
	                <div class="feature-title">
	                    <h5><%=profile.getMem_nickname() %></h5>
	                    <p><%=profile.getMem_email() %></p>
	                </div>
	                <div class="feature-favourite">
	                <% if(profile.getMem_userid().equals(userid)) { %>
	                    <a href="profile_setting.jsp" id="setProfile" data-toggle="tooltip" data-placement="bottom" title="프로필 설정"><i class="fas fa-cog fa-sm" aria-hidden="true"></i></a>
                    <% } else { %>
                    	<form id="followForm" method="post"></form>
                    <% } %>
	                </div>
	            </div>
	        </div>
	    </div>
		
  		<!-- Single Listing Content -->
		<div class="col-12 col-lg-8">
	  			<div class="single-listing-content">
		        <div class="listing-title">
		            <h4 id="title"></h4>
		            <h6 id="release_date"></h6>
		        </div>
		        <div class="single-listing-nav">
                    <nav>
                        <ul id="listingNav">
                            <li class="active"><a href="#">프로필</a></li>
                            <li><a href="#">성향</a></li>
                            <li><a href="#">활동</a></li>
                            <li><a href="#">친구</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="listing-menu-area mt-100" id="profile">
                	<h4>Profile</h4>
                    <div class="single-listing-menu d-flex justify-content-between">
                        <div class="listing-menu-title">
                            <h6>아이디</h6>
                            <p><%=profile.getMem_userid() %></p>
                        </div>
                    </div>
                    <div class="single-listing-menu d-flex justify-content-between">
                        <div class="listing-menu-title">
                            <h6>닉네임</h6>
                            <p><%=profile.getMem_nickname() %></p>
                        </div>
                    </div>
                    <div class="single-listing-menu d-flex justify-content-between">
                        <div class="listing-menu-title">
                            <h6>이메일</h6>
                            <p><%=profile.getMem_email() %></p>
                        </div>
                    </div>
                    <div class="single-listing-menu d-flex justify-content-between">
                        <div class="listing-menu-title">
                            <h6>이름</h6>
                            <p><%=profile.getMem_name() %></p>
                        </div>
                    </div>
                    <div class="single-listing-menu d-flex justify-content-between">
                        <div class="listing-menu-title">
                            <h6>생년월일</h6>
                            <p><%=profile.getMem_birth() %></p>
                        </div>
                    </div>
                    <div class="single-listing-menu d-flex justify-content-between">
                        <div class="listing-menu-title">
                            <h6>성별</h6>
                            <p><%if (profile.getMem_gender() == 0) {out.print("남성");} else {out.print("여성");} %></p>
                        </div>
                    </div>
                    <div class="single-listing-menu d-flex justify-content-between">
                        <div class="listing-menu-title">
                            <h6>가입일</h6>
                            <p><%=profile.getJoin_date() %></p>
                        </div>
                    </div>
             	</div>
    		</div>
   		</div>
	</div>
</div>
</section>

<%
	} catch(Exception e){
%>
	<script>
		alert('잘못된 접근입니다!');
		history.go(-1);
	</script>		
<%
	}
%>

<jsp:include page="/module/footer.jsp" flush="false" />
<script>
$(document).ready(function() {
	var rs = [];
    var mem_id = '<%=userid%>';
    var target_mem_id = '<%=mem_userid%>';
    var fol_type = '<%=fol_type%>';
    if(fol_type=='N') {
    	rs.push('<button type="submit" class="btn btn-link" id="following" data-toggle="tooltip" data-placement="bottom" title="팔로우"><i id="followIcon" class="fas fa-user-plus fa-sm" aria-hidden="true"></i></button>');
    	rs.push('<input type="hidden" name="mem_id" value="'+mem_id+'">');
    	rs.push('<input type="hidden" name="target_mem_id" value="'+target_mem_id+'">');
    	rs.push('<input type="hidden" name="currentFolType" value="N">');
    	$('#followForm').append(rs.join(''));
    } else if(fol_type=='Y') {
    	rs.push('<button type="submit" class="btn btn-link" id="following" data-toggle="tooltip" data-placement="bottom" title="팔로우 해제"><i id="followIcon" class="fas fa-user-minus fa-sm" aria-hidden="true"></i></button>');
    	rs.push('<input type="hidden" name="mem_id" value="'+mem_id+'">');
    	rs.push('<input type="hidden" name="target_mem_id" value="'+target_mem_id+'">');
    	rs.push('<input type="hidden" name="currentFolType" value="Y">');
    	$('#followForm').append(rs.join(''));
    }
    
    var currentFolType = '';
    $('#followForm').submit(function(event) {
    	event.preventDefault();
        var $form = $(this),
        mem_id = $form.find('input[name="mem_id"]').val(),
        target_mem_id = $form.find('input[name="target_mem_id"]').val(),
        fol_type = $form.find('input[name="currentFolType"]').val();

        var posting = $.post('follow_pro.jsp', {
        	mem_id: mem_id,
        	target_mem_id: target_mem_id,
        	currentFolType: fol_type
        });
        posting.done(function(data) {
        	console.log(data);
        	$('#followForm').find('input[name="currentFolType"]').val(data.ftype);
        		
        	if(data.ftype == 'Y') {
        		$('#followIcon').removeClass('fa-user-plus');
        		$('#followIcon').addClass('fa-user-minus');
        	} else if(data.ftype == 'N') {
        		$('#followIcon').removeClass('fa-user-minus');
        		$('#followIcon').addClass('fa-user-plus');
        	}
        });
    });
    
});
</script>
<script>
$('#following').tooltip('show');
</script>
</body>
</html>