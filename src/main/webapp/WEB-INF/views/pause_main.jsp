<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="se"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Pause</title>


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="assets/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/style.css" type="text/css">

<!-- CSS , JS -->

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>


<style>
#location, #capacity, #to, #receiveMail, #userEmailNum, #userNum, #email,
	#name, #password, #password2 {
	width: 100%;
	height: 50px;
	border: 1px solid #ebebeb;
	border-radius: 2px;
	font-size: 16px;
	color: #19191a;
	text-transform: uppercase;
	font-weight: 500;
	padding-left: 20px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 99999; /* Sit on top */
	padding-top: 50px;
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 60%;
	height: 95%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

#numberBtn {
display: flex;
width: 100%;
align-items: flex-end;
height: 50px !important;
}

#increase, #decrease{
width: 25%;
}
#capacity{
margin-left: 5px;
margin-right: 5px;
}


#join {
	cursor: pointer;
}

*{
text-transform: none !important;
}
</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Section Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="search-icon  search-switch">
			<i class="icon_search"></i>
		</div>
		<div class="header-configure-area">
			<div class="language-option">
				<img src="img/flag.jpg" alt=""> <span>EN <i
					class="fa fa-angle-down"></i></span>
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
						<li><a href="#">Deluxe Room</a></li>
						<li><a href="#">Family Room</a></li>
						<li><a href="#">Premium Room</a></li>
					</ul></li>
				<li><a href="./blog.html">News</a></li>
				<li><a href="./contact.html">Contact</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>

		<div class="top-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-tripadvisor"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a>
		</div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i> (12) 345 67890</li>
			<li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="./index.html"> <img src="img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">

								<ul>
									<li><a href="#">메뉴</a>
										<ul class="dropdown">
											<se:authorize access="isAnonymous()">
												<li><a
													href="${pageContext.request.contextPath}/login.do">로그인</a></li>
											</se:authorize>
											<se:authorize access="isAuthenticated()">
												<se:authentication property="name" var="loginuser" />
												<li>
													<form action="${pageContext.request.contextPath}/logout"
														method="post" id="logout">
														<a><span onclick="logoutFunc()">로그아웃</span></a>
													</form>
												</li>
											</se:authorize>

											<li id="join"><a>회원가입</a>
												<hr></li>
											<li><a href="#">호스트되기</a></li>
											<li><a href="#"></a></li>
										</ul></li>
									<li><a href="memberconfirm.do">마이페이지</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="hero-text">
						<h1>잠시, 쉼</h1>
						<p>잠시쉼은 이러쿵저러쿵해서 매우 좋습니다. 그래서 얼마나 좋냐면요 이러쿵 저러쿵 요리쿵 조리쿵</p>
						<a href="#" class="primary-btn">살펴보기</a>
					</div>
				</div>
				<div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
					<div class="booking-form">
						<h4>
							<b>잠시 쉴 곳을 찾아보세요</b>
						</h4>
						<br>

						<form action=bo()>
							<div class="select-option">
								<label for="location">위치</label> <input type="text"
									placeholder="어디서 쉴까요?" style="user-select: auto;"
									class=".booking-form form .check-date input" id="location">
							</div>
							<div class="check-date">
								<label for="date-in">체크인</label> <input type="date"
									placeholder="날짜 입력" id="date-in" min="" onchange="dateMax()">
									
							</div>
							<div class="check-date">
								<label for="date-out">체크아웃</label> <input type="date"
									placeholder="날짜 입력" id="date-out" min="">
							</div>
							<div class="select-option">
								<label for="numberBtn">게스트</label> 
									<div id="numberBtn"><button id="increase">+</button><input type="text"
									placeholder="인원수" style="user-select: auto;"
									class=".booking-form form .check-date input" id="capacity" value="0"><button id="decrease">-</button></div>
							</div>
							<button id="mainCheck" type="button">검색</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="./assets/img/hero/hero-1.jpg"></div>
			<div class="hs-item set-bg" data-setbg="./assets/img/hero/hero-2.jpg"></div>
			<div class="hs-item set-bg" data-setbg="./assets/img/hero/hero-3.jpg"></div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="footer-text">
				<div class="row">
					<div class="col-lg-4">
						<div class="ft-about">
							<div class="logo">
								<a href="#"> <img src="img/footer-logo.png" alt="">
								</a>
							</div>
							<p>
								We inspire and reach millions of travelers<br /> across 90
								local websites
							</p>
							<div class="fa-social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-tripadvisor"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
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
								<button type="submit">
									<i class="fa fa-send"></i>
								</button>
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
						<div class="co-text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>document.write(new Date().getFullYear());</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="icon_close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>

	<!-- Search model end -->

	<!-- The Modal -->
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<div class="select-option">
				<div id="emailForm">
					<form method="post"
						action="${pageContext.request.contextPath}/send.do">
						<!-- post방식으로 자료를 컨트롤러로 보냄 -->
						<label for="receiveMail">이메일 주소
							<button id="emailCheck">인증번호 받기</button>
						</label> <input type="text" name="receiveMail" placeholder="수신자 메일주소"
							id="receiveMail"> <br> <br> <label
							for="userEmailNum">인증번호
							<button id="emailCheckBtn">확인</button>
						</label><input type="text" id="userEmailNum"
							placeholder="인증번호 6자리를 입력해주세요.">
						<!-- 인증 번호 입력 창 -->
					</form>
				</div>
				<br>
				<form action="join.do" method="post" id="joinform">
					<label for="phone_number">휴대폰번호 <input type="button"
						id="send" value="전송" /></label> <input type="text"
						placeholder="휴대폰 번호를 입력해주세요." style="user-select: auto;"
						class=".booking-form form .check-date input" id="to"
						name="phone_number"> <br> <font id="chkPhone"
						size="2"></font> <input type="hidden" name="text" id="text"><br>
					<!-- 인증번호를 히든으로 저장해서 보낸다 -->

					<label for="userNum">휴대폰 인증번호 <input type="button"
						id="enterBtn" value="확인"></label> <input type="text" id="userNum">
					<!-- 인증 번호 입력 창 -->
					<br>
					<!-- 인증번호와 내가 입력창에 입력한 인증번호 비교하는 창 -->
					이메일 <input type="text" name="email" id="email" /><br> 이름 <input
						type="text" name="name" id="name"><br> 비밀번호 <input
						type="password" id="password" name="password" /><br> 비밀번호 확인
					<input type="password" id="password2" name="password2"> <font
						id="chkPwd" size="2"></font> <input type="hidden" value="0" /> <input
						type="button" value="가입하기" id=gojoin2> <input
						type="button" value="취소하기" id="joincancel">
				</form>
			</div>
		</div>
	</div>

	<!-- Js Plugins -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/jquery.nice-select.min.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/jquery.slicknav.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/main.js"></script>



	<script type="text/javascript">
	
	let todayYear = new Date().getFullYear().toString();
	let todayMonth = (new Date().getMonth()+1).toString() <10 ? "0"+(new Date().getMonth()+1).toString() : (new Date().getMonth()+1).toString();
	let todayDay = (new Date().getDate()).toString() <10 ? "0"+(new Date().getDate()).toString() : (new Date().getDate()).toString();
	let today = todayYear+"-"+todayMonth+"-"+todayDay
	let maxDay;
	let maxDayString;
	let dateMin = () => {
		document.getElementById("date-in").setAttribute("min", today);
		maxDay = new Date(document.getElementById("date-in").getAttribute("min"));
		maxDay.setDate(maxDay.getDate()+1); 
		let maxYear = maxDay.getFullYear().toString();
		let maxMonth = (maxDay.getMonth()+1).toString() <10 ? "0"+(maxDay.getMonth()+1).toString() : (maxDay.getMonth()+1).toString();
		let maxDays = (maxDay.getDate()).toString() <10 ? "0"+(maxDay.getDate()).toString() : (maxDay.getMonth()).toString();
		maxDayString = maxYear+"-"+maxMonth+"-"+maxDays;
		document.getElementById("date-out").setAttribute("min", maxDayString);
	}
	dateMin();
	let dateMax = () => {
		let changeDay = new Date(document.getElementById("date-in").value);
		let changeYear = changeDay.getFullYear().toString();
		let changeMonth = (changeDay.getMonth()+1).toString() <10 ? "0"+(changeDay.getMonth()+1).toString() : (changeDay.getMonth()+1).toString();
		let changeDays = (changeDay.getDate()).toString() <10 ? "0"+(changeDay.getDate()).toString() : (changeDay.getDate()).toString();
		let changeDayString = changeYear+"-"+changeMonth+"-"+changeDays;
		let newMax = new Date(changeDayString);
		let maxYear = newMax.getFullYear().toString();
		let maxMonth = (newMax.getMonth()+1).toString() <10 ? "0"+(newMax.getMonth()+1).toString() : (newMax.getMonth()+1).toString();
		let maxDays = (newMax.getDate()).toString() <10 ? "0"+(newMax.getDate()).toString() : (newMax.getDate()).toString();
		newMaxString = maxYear+"-"+maxMonth+"-"+maxDays;
		document.getElementById("date-out").setAttribute("min", newMaxString); // 제한먹기
		document.getElementById("date-out").value = "";
	}
	let logoutBtn = document.getElementById('logout');
	let logoutFunc = () => {
		logoutBtn.submit();
	}
	
    let searchObj = {
		    check_in: 0,
		    check_out: 0,
		    addr: 0,
		    capacity: 0
    }
    
    
    let authNum = false;
    let authPhoneNum = false;
    let emailCheckNum = 0;
    let emailCheckBtn = document.getElementById("emailCheck");
   	let checkEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
   	let checkPhone = /^\d{3}\d{3,4}\d{4}$/;
   	

    emailCheckBtn.addEventListener("click", function(event) {
  
    	var number2 = Math.floor(Math.random() * 100000) + 100000;
    	  emailCheckNum = number2;
    	  event.preventDefault();
    	  let emailValue = document.getElementById('receiveMail').value;
    	  if(emailValue == "" || emailValue == null) {
    		  alert("이메일 주소를 입력 해주세요.");
    	  } else if(!emailValue.match(checkEmail)) {
    		  alert("이메일을 형식에 맞게 입력 해주세요.");
    	  } else {
    	  
    		  $.ajax({
	                   url:"send.do",
	                   type:"post",
	                   data:{
	                	   receiveMail: $("[name=receiveMail]").val(),	
	                	   message: number2 	                	  
	                        },
	                 success:function(data) {
	                   },
	                   error() {
	                   }
	                });
    	  console.log(number2);
    	  alert("메일발송 완료");
  		  }	
    });    
    
    
    $("#emailCheckBtn").click(function() {   /* 내가 작성한 번호와 인증번호를 비교한다 */
    	event.preventDefault();
	       var userEmailNum = $("#userEmailNum").val();
	             
	       if(userEmailNum == null || userEmailNum == "") {
	          alert("이메일로 발송된 인증번호를 입력해주세요");
	       }     
	       else {     
	          if(userEmailNum == emailCheckNum){
	            alert("인증 성공");
	           	let tempEmail = $('#receiveMail').val()
	           	$('#email').val(tempEmail);
	           	$('#email').attr('readonly', true);
	           	$('#emailForm').hide();
	           	
	             authNum = true; 
	              
	              
	           }
	           else {
	              alert("인증 실패");
	           }          
	       }
	    });
    
    let bo = () => {
    		searchObj.addr = document.getElementById('location').value;
    		searchObj.check_in = document.getElementById('date-in').value;
    		searchObj.check_out = document.getElementById('date-out').value;
    		searchObj.capacity = document.getElementById('capacity').value;
    		
    		localStorage.setItem("search" , searchObj);
    		console.log();
    		
    		};
    		
	let modal = document.getElementById("myModal");
	let span = document.getElementsByClassName("close")[0];
	
    		
	let join = () => {
		modal.style.display = "block";
	}
	
	
    document.getElementById("mainCheck").onclick = bo;
    document.getElementById("join").onclick = join;
 	
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
    
    span.onclick = function() {
    	  modal.style.display = "none";
    }
    
    // 문자인증 구현
    
	 $(document).ready(function() {
	    $("#send").click(function() {
	       var number = Math.floor(Math.random() * 100000) + 100000;
	      
	          if(number>100000){
	             number = number - 10000;
	          }
	          let to2 = $("#to").val();
	         
	          $("#text").val(number);      /* 난수로 생성된 인증번호를 hidden name : text 에 숨긴다 */
	       
	       if(to2 == "" || to2 == null) {
	          alert("휴대폰 번호를 입력해 주세요.");
	       } else if (!to2.match(checkPhone)) {
	    	   alert("휴대폰 번호를 형식에 맞게 입력해주세요.")
	       }
	       else {
	       var con_test = confirm("해당번호로 인증문자를 발송하시겠습니까?");   /* 문자를 보낼껀지 물어본다 */
	          if(con_test == true) {
	               $.ajax({
	                   url:"sendSms.do",
	                   type:"post",
	                   data:{phone_number: to2,
	                        text: $("#text").val()
	                        },
	                 success:function(){
	                   alert("해당 휴대폰으로 인증번호를 발송했습니다");
	                   },
	                   error(){
	                   }
	                });
	          }
	             else if(con_test == false){
	             }
	         }   
	    })
	    $("#enterBtn").click(function() {   /* 내가 작성한 번호와 인증번호를 비교한다 */
	       
	       var userNum = $("#userNum").val();
	       var sysNum = $("#text").val();         
	       if(userNum == null || userNum == ""){
	          alert("휴대폰으로 발송된 인증번호를 입력해주세요");
	       }     
	       else {     
	          if(userNum.trim() == sysNum.trim()) { 
	              alert("인증 성공");
	              $('#to').attr('readonly', true);
	              $("#userNum").val('인증 성공 !! ');
	              $('#userNum').attr('readonly',true);
	              authPhoneNum = true;
	           }
	           else {
	              alert("인증 실패");
	           }          
	       }
	    });
	    
	    $("#to").keyup(function() {
	    	
	    	$.ajax(    
	    			{
	    				url : "phonecheck.do",
	    				type : "post",
	    				data : {phone_number : $("#to").val()},
	    				success : function(data) {
	    					if(data === true) {
	    						event.preventDefault();
	    						
	    						 $('#chkPhone').html('사용가능 한 아이디 입니다.');
	    						 $('#chkPhone').attr('color', '#199894b3'); 
	    						
	    						if($('#to').val() == '') {
	    							$('#chkPhone').empty();
	    						}
	    					} else {
	    						event.preventDefault();
	    						alert("이미 가입한 휴대폰 번호 입니다.");
	    						$('#to').val('');
	    						 return false;
	    					}
	    				}
	    		
	         		}
	    			)
	    });
	    
	    
	 // 비밀번호 유효성 검사 
		$(function() {
			$('#password').blur(function() {
					let checkPwd = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;
				   	let pwdValue = document.getElementById('password').value;
				 if(!pwdValue.match(checkPwd)) {
					event.preventDefault();
					alert("비밀번호가 형식에 맞지 않습니다.")
					$('#password').val("");
			        return false;
				} else {
					event.preventDefault();
					alert("OK");
				}

			});
		});
	 
	 // 비밀 번호 일치 여부 
 
		 $('#password2').keyup(function() {
			 
			 if($('#password2').val() == $('#password').val()) { 
				 $('#chkPwd').html('비밀 번호 일치 ');
				 $('#chkPwd').attr('color', 'green'); 
				
			 } else {
				 $('#chkPwd').html('비밀 번호 일치 XXX');
				 $('#chkPwd').attr('color', 'red'); 
			 }
		 });
	
	  });
    
    // 가입 하기 눌렀을때 인증 유무 확인
    
    let joinForm = document.getElementById('joinform');
    let joinFormBtn = document.getElementById('gojoin2');
    
    
    let joinEvent = () => {
    	if(authNum==false){
    		alert("이메일 ㅇㅈ확인");
    	} else if (authPhoneNum==false){
    		alert("휴대폰 인증 완료 바람");
    	} else {
    		joinForm.submit();
    	}
    }
    
    joinFormBtn.addEventListener("click", joinEvent);
    
    
    // 위치 검색 할때 '구' 까지 자동완성 기능
     $(function() {
    	var locationSearch = [" 🇰🇷 서울시 강남구 " , " 🇰🇷 서울시 강동구" , " 🇰🇷 서울시 송파구" , " 🇰🇷 서울시 강서구" , " 🇰🇷 서울시 중구" , " 🇰🇷 서울시 종로구",
			  " 🇰🇷 서울시 용산구" , " 🇰🇷 서울시 성동구" ," 🇰🇷 서울시 광진구" , " 🇰🇷 서울시 동대문구" , " 🇰🇷 서울시 중랑구",
			  " 🇰🇷 서울시 성북구" , " 🇰🇷 서울시 도봉구" , " 🇰🇷 서울시 노원구" , " 🇰🇷 서울시 은평구" , " 🇰🇷 서울시 서대문구" , " 🇰🇷 서울시 마포구",
			  " 🇰🇷 서울시 양천구" , " 🇰🇷 서울시 강복구", " 🇰🇷 서울시 구로구" , " 🇰🇷 서울시 금천구", " 🇰🇷 서울시 영등포구" ," 🇰🇷 서울시 동작구",
			  " 🇰🇷 서울시 관악구" , " 🇰🇷 서울시 서초구"];
    	$('#location').autocomplete({
    		source : locationSearch
    	});
    });   
    
    $(function() {
    	$('#joincancel').click(function() {
    		location.href = "main.do";
    	})
    	// + / - 버튼을 누르면 게스트 인원 수 증가 capacity
    	const number = document.getElementById("capacity");
    	const increase = document.getElementById("increase");
    	const decrease = document.getElementById("decrease");
    	
    	increase.onclick = () => {
    		event.preventDefault();
    		const current = parseInt(number.value, 10);
    		number.value = current + 1;
    	};
    	
    	decrease.onclick = () => {
    		event.preventDefault();
    		const current = parseInt(number.value, 10);
    		number.value = current - 1;
    		if(number.value < 0 ) {
    			number.value = 0;
    		}
    	};
    	
    	
    })
    
    </script>
</body>
</html>