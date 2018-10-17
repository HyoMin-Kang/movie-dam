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

<main class="profile-page">
    <section class="section-profile-cover section-shaped my-0">
      <!-- Circles background -->
      <div class="shape shape-style-1 shape-primary alpha-4">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <!-- SVG separator -->
      <div class="separator separator-bottom separator-skew">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </section>
    <section class="section">
      <div class="container">
        <div class="card card-profile shadow mt--300">
          <div class="px-4">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                  <a href="#">
                    <img src="/movie-dam/assets/img/profile-img/<%=profile.getMem_img() %>" width="800" height="800" class="rounded-circle">
                  </a>
                </div>
              </div>
              <div class="col-lg-4 order-lg-3 text-lg-right align-self-lg-center">
                <div class="card-profile-actions py-4 mt-lg-0">
                  	<a href="#" class="btn btn-sm btn-default float-right">Message</a>
                <% if(profile.getMem_userid().equals(userid)) { %>
                	<a href="profile_setting.jsp" class="btn btn-sm btn-info mr-4" id="setProfile" data-toggle="tooltip" data-placement="bottom" title="프로필 설정">설정</a>
                <% } else { %>
                	<form id="followForm" method="post"></form>
                <% } %>
                </div>
              </div>
              <div class="col-lg-4 order-lg-1">
                <div class="card-profile-stats d-flex justify-content-center">
                  <div>
                    <span class="heading">22</span>
                    <span class="description">팔로우</span>
                  </div>
                  <div>
                    <span class="heading">42</span>
                    <span class="description">팔로워</span>
                  </div>
                  <div>
                    <span class="heading">26</span>
                    <span class="description">???</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="text-center mt-5">
              <h3><%=profile.getMem_nickname() %>
                <span class="font-weight-light">, 27</span>
              </h3>
              <div class="h6 font-weight-300"><i class="ni location_pin mr-2"></i><%=profile.getMem_email() %></div>
            </div>
            <div class="mt-5 py-5 border-top text-center">
              <div class="row justify-content-center">
                <div class="col-lg-9">
					<ul class="nav nav-pills nav-fill flex-column flex-sm-row" id="tabs-text" role="tablist">
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0 active" id="tabs-text-1-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="tabs-text-1" aria-selected="true">프로필</a></li>
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0" id="tabs-text-2-tab" data-toggle="tab" href="#tendency" role="tab" aria-controls="tabs-text-2" aria-selected="false">성향</a></li>
						<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0" id="tabs-text-3-tab" data-toggle="tab" href="#activiry" role="tab" aria-controls="tabs-text-3" aria-selected="false">활동</a></li>
					</ul>
					
				</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

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
    	rs.push('<button type="submit" class="btn btn-sm btn-info mr-4" id="following">Follow</button>');
    	rs.push('<input type="hidden" name="mem_id" value="'+mem_id+'">');
    	rs.push('<input type="hidden" name="target_mem_id" value="'+target_mem_id+'">');
    	rs.push('<input type="hidden" name="currentFolType" value="N">');
    	$('#followForm').append(rs.join(''));
    } else if(fol_type=='Y') {
    	rs.push('<button type="submit" class="btn btn-sm btn-danger mr-4" id="following">Unfollow</button>');
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
        		$('#following').removeClass('btn-info');
        		$('#following').addClass('btn-danger');
        		$('#following').text('Unfollow');
        	} else if(data.ftype == 'N') {
        		$('#following').removeClass('btn-danger');
        		$('#following').addClass('btn-info');
        		$('#following').text('Follow');
        	}
        });
    });
});
</script>
</body>
</html>