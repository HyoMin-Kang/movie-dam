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
                    <h4>Featured destinations</h4>
                    <p>Editor’s pick</p>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-1.jpg" alt="">
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
            </div>
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-2.jpg" alt="">
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
            </div>
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-3.jpg" alt="">
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
            </div>
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-4.jpg" alt="">
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
            </div>
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-5.jpg" alt="">
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
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-1.jpg" alt="">
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
            </div>
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-2.jpg" alt="">
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
            </div>
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-3.jpg" alt="">
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
            </div>
            <!-- Single Features Area -->
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="single-features-area mb-50">
                    <img src="img/bg-img/feature-4.jpg" alt="">
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
            </div>
        </div>
    </div>
</section>
<!-- ***** Listing Destinations Area End ***** -->


<jsp:include page="/module/footer.jsp" flush="false"/>

</body>
</html>