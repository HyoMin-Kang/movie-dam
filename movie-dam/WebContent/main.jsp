<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="moviedam.board.ArticleDBBean" %>
<%@ page import="moviedam.board.ArticleDataBean" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="moviedam.board.RestaurantDBBean" %>
<%@ page import="moviedam.board.RestaurantDataBean" %>
<%@ page import="moviedam.member.MemberDataBean" %>
<%@ page import="moviedam.member.MemberDBBean" %>
<%
	request.setCharacterEncoding("utf-8");
	String title = "영화담";
%>
<%
	ArrayList<ArticleDataBean> articleList = null; 
	ArticleDBBean article_db = ArticleDBBean.getInstance();
	articleList = article_db.getTopArticles(); 
	
	List<RestaurantDataBean> restaurantList = null;   
	RestaurantDBBean restaurant_db = RestaurantDBBean.getInstance();
	restaurantList = restaurant_db.getTopArticles();
	
	MemberDBBean mem_db = MemberDBBean.getInstance(); 
%>
<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>" />
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false" />

<!-- ***** Welcome Area Start ***** -->
<section class="dorne-welcome-area bg-img bg-overlay"style="background-image: url(/movie-dam/assets/img/bg-img/coverlg_home.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center">
            <div class="col-12 col-md-10">
                <div class="hero-content">
                    <h2>라라랜드 같은 로맨스 영화</h2>
                    <h4>최신 로맨스 영화 보러 갈래?</h4>
                    <button type="submit" class="btn dorne-btn" onclick="location.href='/movie-dam/movie/movie_list.jsp?resultPage=1&sort=vote_count&with_genres=10749' "><i class="fa fa-search pr-2" aria-hidden="true"></i> 보러가기</button>
				</div>
			</div>
		</div>
    </div>
</section>
<!-- ***** Welcome Area End ***** -->

<!-- ***** Catagory Area Start ***** -->
<section class="dorne-catagory-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="all-catagories">
                    <div class="row">
                        <!-- Single Catagory Area -->
                        <div class="col-12 col-sm-6 col-md">
                            <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.2s">
                                <div class="catagory-content">
                                    <img src="/movie-dam/assets/img/core-img/icon-5.png" alt="">
                                    <a href="/movie-dam/movie/movie_list.jsp">
                                        <h6>Movies</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Catagory Area -->
                        <div class="col-12 col-sm-6 col-md">
                            <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.4s">
                                <div class="catagory-content">
                                    <img src="/movie-dam/assets/img/core-img/icon-2.png" alt="">
                                    <a href="/movie-dam/board/cinema_restaurant.jsp">
                                        <h6>Restaurants</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Catagory Area -->
                        <div class="col-12 col-sm-6 col-md">
                            <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.6s">
                                <div class="catagory-content">
                                    <img src="/movie-dam/assets/img/core-img/icon-3.png" alt="">
                                    <a href="/movie-dam/board/free_board.jsp?category=all">
                                        <h6>Free Board</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Catagory Area -->
                        <div class="col-12 col-sm-6 col-md">
                            <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.8s">
                                <div class="catagory-content">
                                    <img src="/movie-dam/assets/img/core-img/icon-4.png" alt="">
                                    <a href="/movie-dam/debate/debate_chanban.jsp">
                                        <h6>Debate [Pro-Con]</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Catagory Area -->
                        <div class="col-12 col-md">
                            <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="1s">
                                <div class="catagory-content">
                                    <img src="/movie-dam/assets/img/core-img/icon-1.png" alt="">
                                    <a href="/movie-dam/debate/debate_battle.jsp">
                                        <h6>Debate [Battle]</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Catagory Area End ***** -->

<!-- ***** Editor Pick Area Start ***** -->
<section class="dorne-editors-pick-area bg-img bg-overlay-9 section-padding-100" style="background-image: url(/movie-dam/assets/img/bg-img/hero-2.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center">
                    <span></span>
                    <h4>BOX OFFICE</h4>
                    <p>최신 박스오피스 순위</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-6">
                <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.2s">
                    <img src="/movie-dam/assets/img/bg-img/rank1.jpg" alt="">
                    <div class="editors-pick-info">
                        <div class="places-total-destinations d-flex">
                            <a href="#">Rank 1</a>
	                        <div class="add-more">
	                            <a href="/movie-dam/movie/movie_detail.jsp?id=369972">+</a>
	                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6">
                <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.4s">
                    <img src="/movie-dam/assets/img/bg-img/rank2.jpg" alt="">
                    <div class="editors-pick-info">
                        <div class="places-total-destinations d-flex">
                            <a href="#">Rank 2</a>
	                        <div class="add-more">
	                            <a href="/movie-dam/movie/movie_detail.jsp?id=544627">+</a>
	                        </div>
                        </div>
                    </div>
                </div>
                <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.6s">
                    <img src="/movie-dam/assets/img/bg-img/rank3.jpg" alt="">
                    <div class="editors-pick-info">
                        <div class="places-total-destinations d-flex">
                            <a href="#">Rank 3</a>
	                        <div class="add-more">
	                            <a href="/movie-dam/movie/movie_detail.jsp?id=335983">+</a>
	                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Editor Pick Area End ***** -->

<!-- ***** Features Destinations Area Start ***** -->
<section class="dorne-features-destinations-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="section-heading dark text-center">
                    <span></span>
                    <h4>Featured destinations</h4>
                    <p>Editor’s pick</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="features-slides owl-carousel">
                    <!-- Single Features Area -->
                    <div class="single-features-area">
                        <img src="/movie-dam/assets/img/bg-img/feature-1.jpg" alt="">
                        <!-- Price -->
                        <div class="price-start">
                            <p>FROM $59/night</p>
                        </div>
                        <div class="feature-content d-flex align-items-center justify-content-between">
                            <div class="feature-title">
                                <h5>Ibiza</h5>
                                <p>Party</p>
                            </div>
                            <div class="feature-favourite">
                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- Single Features Area -->
                    <div class="single-features-area">
                        <img src="/movie-dam/assets/img/bg-img/feature-2.jpg" alt="">
                        <!-- Price -->
                        <div class="price-start">
                            <p>FROM $59/night</p>
                        </div>
                        <div class="feature-content d-flex align-items-center justify-content-between">
                            <div class="feature-title">
                                <h5>Paris</h5>
                                <p>Luxury</p>
                            </div>
                            <div class="feature-favourite">
                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- Single Features Area -->
                    <div class="single-features-area">
                        <img src="/movie-dam/assets/img/bg-img/feature-3.jpg" alt="">
                        <!-- Price -->
                        <div class="price-start">
                            <p>FROM $59/night</p>
                        </div>
                        <div class="feature-content d-flex align-items-center justify-content-between">
                            <div class="feature-title">
                                <h5>Lake Como</h5>
                                <p>Spectacular</p>
                            </div>
                            <div class="feature-favourite">
                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- Single Features Area -->
                    <div class="single-features-area">
                        <img src="/movie-dam/assets/img/bg-img/feature-4.jpg" alt="">
                        <!-- Price -->
                        <div class="price-start">
                            <p>FROM $59/night</p>
                        </div>
                        <div class="feature-content d-flex align-items-center justify-content-between">
                            <div class="feature-title">
                                <h5>Greece</h5>
                                <p>Sunny</p>
                            </div>
                            <div class="feature-favourite">
                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- Single Features Area -->
                    <div class="single-features-area">
                        <img src="/movie-dam/assets/img/bg-img/feature-5.jpg" alt="">
                        <!-- Price -->
                        <div class="price-start">
                            <p>FROM $59/night</p>
                        </div>
                        <div class="feature-content d-flex align-items-center justify-content-between">
                            <div class="feature-title">
                                <h5>Norway</h5>
                                <p>All Year round</p>
                            </div>
                            <div class="feature-favourite">
                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Features Destinations Area End ***** -->

<!-- ***** Features Restaurant Area Start ***** -->
<section class="dorne-features-restaurant-area bg-default">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center">
                    <span></span>
                    <h4>Featured Restaurants</h4>
                    <p>영화관 근처 음식점</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="features-slides owl-carousel">
<%
for (int i = 0 ; i < restaurantList.size() ; i++) {
	  RestaurantDataBean restaurant = restaurantList.get(i);
%>
                   <div class="single-features-area" style="width:100%; height:379px;">                    
                        <img style="width:100%; height:250px;" src="/movie-dam/imageFolder/cinema_restaurant/<%=restaurant.getArticle_file()%>" alt="저장된 사진이 없습니다.">
                        <div class="feature-content d-flex align-items-center justify-content-between">
                            <div class="feature-title">
                                <h5 style="display: inline-block; whith-space: nowrap; overflow: hidden; text-overflow: ellipsis; height: 3em;"><%=restaurant.getArticle_title() %></h5>
                                <p><%=restaurant.getArticle_writer() %></p>
                            </div>
                            
                            <div class="feature-favourite">
                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>                                                 
                    </div>
<%
}
%>              
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Features Restaurant Area End ***** -->

<!-- ***** Features Events Area Start ***** -->
<section class="dorne-features-events-area bg-img bg-overlay-9 section-padding-100-50" style="background-image: url(/movie-dam/assets/img/bg-img/hero-3.jpg)">
    <div class="container">  
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center">
                    <span></span>
                    <h4>Best articles</h4>
                    <p>추천 수가 가장 많았던 게시글</p>
                </div>
            </div>
        </div>
        <div class="row">
<%
double delay = 0.1;
for (int i = 0 ; i < articleList.size() ; i++) {
	   ArticleDataBean article = articleList.get(i);
	   MemberDataBean writer_profile = mem_db.getProfile(article.getArticle_writer());
%>
            <div class="col-12 col-lg-6">
                <div class="single-feature-events-area d-sm-flex align-items-center wow fadeInUpBig" data-wow-delay="<%=delay+0.1 %>s">
                    <div class="feature-events-thumb">
                        <img src="/movie-dam/assets/img/profile-img/<%=writer_profile.getMem_img() %>" width="128">
                        <div class="date-map-area d-flex">
                            <a href="#">26 Oct</a>
                        </div>
                    </div>
                    <div class="feature-events-content">
                        <h5><%=article.getArticle_title()%></h5>
                        <h6><%=article.getArticle_writer()%></h6>
                    </div>
                    <div class="feature-events-details-btn">
                        <a href="#">+</a>
                    </div>
                </div>
            </div>
<%	} %>
        </div>
	</div>	
</section>
<!-- ***** Features Events Area End ***** -->

<jsp:include page="/module/footer.jsp" flush="false" />

</body>
</html>