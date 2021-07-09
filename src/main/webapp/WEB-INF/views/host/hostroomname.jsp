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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<!-- 호스트페이지 뷰단 불러오는 코드 -->
	<link href="assets/hostcss/hostpageview.css" rel="stylesheet" type="text/css">
	
<title>이름 정하기</title>
</head>
<body>

	<div class="grid-container">
		<div class="item1">
		<h2>숙소 이름을 만들어주세요</h2><hr>
		</div>
		<div class="item2">
			<button id="exit">나가기</button>
		</div>
		<div class="item3"></div>  
		<div class="item4" text-align="center" >
			<h5><b>숙소 이름 정하기</b></h5>
				<div class="flex_textarea">
					<textarea id="namebox" rows="4" cols="25" maxlength="50"></textarea>
					<div class="div_number_font">
						<span class="number_font">0/50</span>
					</div>
				</div>
				<br>
			<button id="uploadbtn">숙소 이름 등록 하기</button>
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
    
    	$(document).on('keyup', '#namebox', function(event){
    		$('.number_font').text($(event.target).val().length + "/50");
    	});
    	
    	$(document).on('click', '#begin', function(event){
    		document.location.href = "${pageContext.request.contextPath}/hostroomintroduce.do"
    	});
    
    </script>
    
</html>