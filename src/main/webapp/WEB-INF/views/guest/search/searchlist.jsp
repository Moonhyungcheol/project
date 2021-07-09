<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="assets/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <link rel="stylesheet" href="CSS/guestlist.css" type="text/css">
</head>
<body>
<!-- Filter Modal -->
<div class = "modal-filter" id = "modal-filter">
	<div class = "modal-filter-container">
		<header class = "modal-filter-header" id  = "modal-filter-header">
			<div class = "modal-filter-close" id = "modal-filter-close"><span class = "close-modal">&times;</span></div>
			<div class = "modal-filter-title"><h4>필터 설정하기</h4></div>
			<div class = "modal-molra"></div>
		</header>
		<div class = "modal-filter-content" id = "modal-filter-content">
			<div class = "modal-filter-checkbox">
				<div class = "checkbox-wrap-title"><h3>침대와 욕실</h3></div>
				<div class = "checkbox-wrap">
					<div class = "check-name">침대 수</div>
					<div class = "bed-bath-btns">
						<div class = "count-btn"><button id = "bed_minus_btn">-</button></div>
						<div class = "count-num"><span id = count_bed>1</span></div>
						<div class = "count-btn"><button id = "bed_pluse_btn">+</button></div>
					</div>
				</div>
				<div class = "checkbox-wrap">
					<div class = "check-name">욕실 수</div>
					<div class = "bed-bath-btns">
						<div class = "count-btn"><button id = "bath_minus_btn">-</button></div>
						<div class = "count-num"><span id = "count_bath">1</span></div>
						<div class = "count-btn"><button id = "bath_pluse_btn">+</button></div>
					</div>
				</div>
			</div>
			<div>
				<hr>
			</div>
			<div class = "modal-filter-checkbox">
				<div class = "checkbox-wrap-title"><h3>편의 시설</h3></div>
				<div class = "filter-checkbox-ameity-wrap">
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "kitchen">
								<input type = "checkbox" id = "kitchen" value = "1">
								<span>주방</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "airconditioner">
								<input type = "checkbox" id = "airconditioner" value = "1">
								<span>냉방</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "laundry">
								<input type = "checkbox" id = "laundry" value = "1">
								<span>세탁기</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "wifi">
								<input type = "checkbox" id = "wifi" value = "1">
								<span>무선 인터넷</span>
							</label>
						</div>
					</div>
				</div>
				<div class = "filter-checkbox-ameity-wrap" id = "filter-checkbox-ameity-wrap-hidden">
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "free_parking">
								<input type = "checkbox" id = "free_parking" value = "1">
								<span>무료 주차</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "bbq_grill">
								<input type = "checkbox" id = "bbq_grill" value = "1">
								<span>BBQ</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "shower_supplies">
								<input type = "checkbox" id = "shower_supplies" value = "1">
								<span>샤워 용품</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "cooking_item">
								<input type = "checkbox" id = "cooking_item" value = "1">
								<span>주방 용품</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "TV">
								<input type = "checkbox" id = "TV" value = "1">
								<span>TV</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "OTT">
								<input type = "checkbox" id = "OTT" value = "1">
								<span>OTT</span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div>
				<hr>
			</div>
			<div class = "modal-filter-checkbox">
				<div class = "checkbox-wrap-title"><h3>이용 규칙</h3></div>
				<div class = "filter-checkbox-ameity-wrap">
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "available_smoking">
								<input type = "checkbox" id = "available_smoking" value = "1">
								<span>흡연 가능</span>
							</label>
						</div>
					</div>
					<div class = "filter-checkbox-amenity">
						<div class = "filter-checkbox-lable">
							<label class = "check-amenity" for = "available_pet">
								<input type = "checkbox" id = "available_pet" value = "1">
								<span>반려동물 입실 가능</span>
							</label>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		<footer class = "modal-filter-footer" id = "modal-filter-footer">
			<button id = "filttering">filttering</button>
		</footer>
	</div>
</div>
<!-- Filter Modal End -->

	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

<!-- test -->
    <!-- Offcanvas Menu Section Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="canvas-open">
        <i class="icon_menu"></i>
    </div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="icon_close"></i>
        </div>
        <div class="search-icon search-switch">
            <i class="icon_search"></i>
        </div>
        <div class="header-configure-area">
            <div class="language-option">
                <img src="img/flag.jpg" alt="">
                <span>EN <i class="fa fa-angle-down"></i></span>
                <div class="flag-dropdown">
                    <ul>
                        <li><a href="#">Zi</a></li>
                        <li><a href="#">Fr</a></li>
                    </ul>
                </div>
            </div>
            <a href="#" class="bk-btn">Booking Now</a>
        </div>
        <nav class="mainmenu mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./rooms.html">Rooms</a></li>
                <li><a href="./about-us.html">About Us</a></li>
                <li><a href="./pages.html">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./room-details.html">Room Details</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">News</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="top-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-tripadvisor"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <ul class="top-widget">
            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
        </ul>
    </div>
    <!-- Offcanvas Menu Section End -->

    <!-- Header Section Begin -->
    <header class="header-section header-normal">
        <div class="top-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="tn-left">
                            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
                            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <div class="tn-right">
                            <div class="top-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                            <a href="#" class="bk-btn">Booking Now</a>
                            <div class="language-option">
                                <img src="img/flag.jpg" alt="">
                                <span>EN <i class="fa fa-angle-down"></i></span>
                                <div class="flag-dropdown">
                                    <ul>
                                        <li><a href="#">Zi</a></li>
                                        <li><a href="#">Fr</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-item">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="./index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu">
                            <nav class="mainmenu">
                                <ul>
                                	<li id = "show-filter-modal"><a >filter</a></li>
                                    <li><a href="./index.html">Home</a></li>
                                    <li class="active"><a href="./rooms.html">Rooms</a></li>
                                    <li><a href="./about-us.html">About Us</a></li>
                                    <li><a href="./pages.html">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="./room-details.html">Room Details</a></li>
                                            <li><a href="./blog-details.html">Blog Details</a></li>
                                            <li><a href="#">Family Room</a></li>
                                            <li><a href="#">Premium Room</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="./blog.html">News</a></li>
                                    <li><a href="./contact.html">Contact</a></li>
                                </ul>
                            </nav>
                            <div class="nav-right search-switch">
                                <i class="icon_search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>Our Rooms</h2>
                        <div class="bt-option">
                            <a href="./home.html">Home</a>
                            <span>Rooms</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->
    
    <!-- Rooms Section Begin -->
    <section class="rooms-section spad">
        <div class="container">
            <div class="row" id = "roombox">
            </div>
        </div>
    </section>
    <!-- Rooms Section End -->
	<!-- Home Room Section Begin -->
    <section class="hp-room-section">
        <div class="container-fluid">
            <div class="hp-room-items">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="assets/img/room/room-b1.jpg">
                            <div class="hr-text">
                                <h3>Double Room</h3>
                                <h2>199$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="assets/img/room/room-b2.jpg">
                            <div class="hr-text">
                                <h3>Premium King Room</h3>
                                <h2>159$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="assets/img/room/room-b3.jpg">
                            <div class="hr-text">
                                <h3>Deluxe Room</h3>
                                <h2>198$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="assets/img/room/room-b4.jpg">
                            <div class="hr-text">
                                <h3>Family Room</h3>
                                <h2>299$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Home Room Section End -->
    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br/> across 90 local websites</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(12) 345 67890</li>
                                <li>info.colorlib@gmail.com</li>
                                <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>Get the latest updates and offers.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="JS/guestlist.js"></script>
</body>
	
</body>

<script>
    window.onload = function() {
 
 
};
</script>
</html>






























