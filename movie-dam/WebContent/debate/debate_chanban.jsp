<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = "찬반 토론";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<!-- ***** Breadcumb Area Start ***** -->
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/hero-1.jpg)"></div>
<!-- ***** Breadcumb Area End ***** -->

<!-- ***** Listing Destinations Area Start ***** -->
<section class="dorne-listing-destinations-area section-padding-100-50">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-heading dark text-center">
                    <span></span>
                    <h4>Pro and con debate</h4>
                    <p>영화를 주제로 한 다양한 찬반 토론들이 진행중입니다.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- Single Features Area -->
            <div class="col-12">
                <ul class="list-unstyled">
					<li class="media">
					  <img class="mr-3" src="https://via.placeholder.com/128x128" alt="Generic placeholder image">
					  <div class="media-body">
					    <h4 class="mt-0 mb-1">통제를 거부한 캡틴아메리카의 선택은 옳은가</h4>
					    <p>시민의 안녕과 지구의 평화를 위해 악의 무리와 싸우는 정의의 단체가 있다. 이들은 세계적 군대 규모와 병력으로도 저지할 수 없는 대규모 테러를 막기 위해 결성된 단체이다. 이 단체의 힘은 단 한 번의 전투만으로도 세계의 주요 도시들을 초토화시킬 수 있을만큼 강력하다. 실제 이들의 활약으로 수많은 시민, 어쩌면 지구 전체가 죽음을 면하기도 했다. 어쩌면 당연하게도, 세계연합기구는 이러한 힘이 ‘관리’ 되기를 원한다. 영화 캡틴 아메리카: 시빌 워는 이처럼 팀 어벤저스의 활동 방향을 두고 전개된다. 몇몇 팀원들은 그동안 통제되지 않았던 스스로의 힘에 두려움을 느끼며 팀을 UN 산하에 두고 싶어 한다. 하지만, 그동안 팀을 이끌어 온 캡틴 아메리카는 신뢰할 수 없는 통제’에 더 큰 두려움을 느낀다. 팀 내부가 스스로 합의하는 통제가 아닌 타의에 의한 통제가 그는 달갑지 않다. 팀 외부에 강력한 권한이 이양된다면, 팀의 원래 목적을 상실할 수 있다는 우려에서다. 내부의 의견 충돌은 결국 영화 제목에서 시사하듯 팀의 시빌 워(내전)까지 이어졌다. 개인의 자유의지를 신뢰한 팀 캡틴 아메리카의 선택은 과연 옳은것인가.</p>
					  	<div class="hashtag">
						  	<a type="buttn" class="btn btn-outline-primary btn-sm">#캡틴아메리카</a>
						  	<a type="buttn" class="btn btn-outline-primary btn-sm">#공리주의</a>
						  	<a type="buttn" class="btn btn-outline-primary btn-sm">#권력</a>
						  	<a type="buttn" class="btn btn-outline-primary btn-sm">#영웅</a>
					  	</div>
					  	<div class="pro-con-icon">
					  		<span id="pros"><i class="fas fa-thumbs-up"></i> 찬성 </span>
					  		<span id="cons"><i class="fas fa-thumbs-down"></i> 반대 </span>
					  		<span id="opinion"><i class="fas fa-comments"></i> 의견 </span>
					  	</div>
					  </div>
					</li>
				</ul>
            </div>
            
        </div>
    </div>
</section>
<!-- ***** Listing Destinations Area End ***** -->


<jsp:include page="/module/footer.jsp" flush="false"/>

</body>
</html>