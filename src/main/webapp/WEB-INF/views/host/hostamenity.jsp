<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Css Styles -->
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
    
    <!-- 제이쿼리 cdn -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<!-- 폰트어썸 cdn -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<style type="text/css">
	.container2 {
		display: grid;
		grid-template-areas: 'box1 box2 box3
							  box4 box5 box6
							  box7 box8 box9
							  box10 box11 box12';
		height: 100vh;
		grid-template-rows: 1fr 1fr 1fr 1fr;
		grid-template-columns: 1fr 1fr 1fr;
		padding: 20px;
	}
	
	.container2 > div {
	  	text-align: center;
	  	margin: 0px 8px 16px !important;
	  	font-size: 100%;
	}
	
	.container2 > div > input[type=checkbox] {
		display: none;
	}
	
	#firearm{
		grid-area : box1;
	}
	#kitchenthing{
		grid-area : box2;
	}
	#wifi{
		grid-area : box3;
	}
	#airconditioning{
		grid-area : box4;
	}
	#parkingarea{
		grid-area : box5;
	}
	#bbq{
		grid-area : box6;
	}
	#laundry{
		grid-area : box7;
	}
	#tv{
		grid-area : box8;
	}
	#ott{
		grid-area : box9;
	}
	#smoking{
		grid-area : box10;
	}
	#pet{
		grid-area : box11;
	}
	#showerthing{
		grid-area : box12;
	}
	
	
	.fas {
		transform: none !important;
	}
	
	</style>
	<!-- 호스트페이지 뷰단 불러오는 코드 -->
	<link href="assets/hostcss/hostpageview.css" rel="stylesheet" type="text/css">
<title>편의시설 선택</title>
</head>
<body>
	<div class="grid-container">
		<div class="item1">
		<h2>숙소 편의시설 정보를 </h2><hr>
		<h2>선택하여 추가해 주세요</h2>
		</div>
		<div class="item2">
			<button id="exit">나가기</button>
		</div>
		<div class="item3"></div>  
		<div class="item4" text-align="center">
		특별히 내세울 만한 편의시설이 있나요?<br><br>
			<div class="container2">
				<div>
					<button id="firearm" class="button_hover delete_border"><i class="fas fa-fire-extinguisher"></i><br>소화용품</button>
					<input type="checkbox" id="checkbox_firearm">
				</div>
				<div>
					<button id="kitchenthing" class="button_hover delete_border"><i class="fas fa-utensils"></i><br>주방용품</button>
					<input type="checkbox" id="checkbox_kitchenthing">
				</div>
				<div>
					<button id="wifi" class="button_hover delete_border"><i class="fas fa-wifi"></i><br>WIFI</button>
					<input type="checkbox" id="checkbox_wifi">
				</div>
				<div>
					<button id="airconditioning" class="button_hover delete_border"><i class="fas fa-fan"></i><br>냉난방기</button>
					<input type="checkbox" id="checkbox_airconditioning">
				</div>
				<div>
					<button id="parkingarea" class="button_hover delete_border"><i class="fas fa-parking"></i><br>주차공간</button>
					<input type="checkbox" id="checkbox_parkingarea">
				</div>
				<div>
					<button id="bbq" class="button_hover delete_border"><i class="fas fa-piggy-bank"></i><br>바베큐</button>
					<input type="checkbox" id="checkbox_bbq">
				</div>
				<div>
					<button id="laundry" class="button_hover delete_border"><i class="fas fa-water"></i><br>세탁도구</button>
					<input type="checkbox" id="checkbox_laundry">
				</div>
				<div>
					<button id="tv" class="button_hover delete_border"><i class="fas fa-tv"></i><br>TV</button>
					<input type="checkbox" id="checkbox_tv">
				</div>
				<div>
					<button id="ott" class="button_hover delete_border"><i class="fas fa-server"></i><br>OTT</button>
					<input type="checkbox" id="checkbox_ott">
				</div>
				<div>
					<button id="smoking" class="button_hover delete_border"><i class="fas fa-smoking"></i><br>흡연가능</button>
					<input type="checkbox" id="checkbox_firearm">
				</div>
				<div>
					<button id="pet" class="button_hover delete_border"><i class="fas fa-dog"></i><br>반려동물</button>
					<input type="checkbox" id="checkbox_pet">
				</div>
				<div>
					<button id="showerthing" class="button_hover delete_border"><i class="fas fa-shower"></i><br>샤워용품</button>
					<input type="checkbox" id="checkbox_showerthing">
				</div>	
			</div>
		</div>
		<div class="item5">
			<button id="begin">다음</button>
		</div>
		<div class="item6">
			<button id="back">뒤로가기</button>
		</div>  
	</div>
</body>
	<!-- Js Plugins -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/main.js"></script>
    
    
    <script type="text/javascript">
    	// checkbox toggle
    	$(document).on("click", ".container2 > div > button", function(event) {
    		
    		let checkbox;
    		let target;
    		
			if($(event.target).prop('tagName') === 'I') {
				checkbox = $(event.target).parent().next();
				target = $(event.target).parent();
			} else {
				checkbox = $(event.target).next();
				target = $(event.target);
			}
    		
    		
    		let isChecked = true;
    		if(checkbox.prop("checked")) {
    			isChecked = false;
    			target.addClass("delete_border");
    			target.removeClass("create_border");
    		} else {
    			isChecked = true;
    			target.addClass("create_border");
    			target.removeClass("delete_border");
    		}
    		
    		checkbox.prop("checked", isChecked);
    	});
    	
    	$(document).on('click', '#begin', function(event) {
    		document.location.href = "${pageContext.request.contextPath}/beforeroompicture.do";
    	});
    </script>
    
    
</html>