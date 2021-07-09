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
	
	<!-- 폰트어썸 cdn -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
<title>이용 인원 정하기</title>


	<style type="text/css">
		.count-container{
			width: 70%;
			display: flex;
			flex-direction: row;
			flex-wrap: wrap;
			justify-content: space-between;		
			padding: 16px;	
		}
		
		.button > button {
			border-radius: 50%;
			margin-left: 10px;
			margin-right: 10px;
		}
	</style>

</head>
<body>

	<div class="grid-container">
		<div class="item1">
		<h2>숙소에서 맞이할 최대</h2><hr>
		<h2>인원수를 알려주세요.</h2>
		</div>
		<div class="item2">
			<button id="exit">나가기</button>
		</div>
		<div class="item3"></div>  
		<div class="item4">
			
			<div class="count-container">
				<div class="count-label">게스트</div>
				<div class="button">
					<button id="guest_sub"><i class="fas fa-minus"></i></button>
					<span id="guest_count">1</span>
					<button id="guest_add"><i class="fas fa-plus"></i></button>
				</div>
			</div>
			
			<div class="count-container">
				<div class="count-label">침실</div>
				<div class="button">
					<button id="bed_sub"><i class="fas fa-minus"></i></button>
					<span id="bed_count">1</span>
					<button id="bed_add"><i class="fas fa-plus"></i></button>
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
	  	
    	/* 게스트 수 - 버튼 클릭 시 */
    	$(document).on('click', '#guest_sub', function(event){
    		let guest_count = $('#guest_count').text();
    		guest_count--;
    		if(guest_count < 1) {
    			guest_count = 1;
    		} 
    		$('#guest_count').text(guest_count);
    	});
    	
    	/* 게스트 수 + 버튼 클릭 시 */
    	$(document).on('click', '#guest_add', function(event){
    		let guest_count = $('#guest_count').text();
    		guest_count++;
    		if(guest_count > 14) {
    			guest_count = 14;
    		} 
    		$('#guest_count').text(guest_count);
    	});
    	
    	/* 침대 수 - 버튼 클릭 시 */
    	$(document).on('click', '#bed_sub', function(event){
    		let bed_count = $('#bed_count').text();
    		bed_count--;
    		if(bed_count < 1) {
    			bed_count = 1;
    		} 
    		$('#bed_count').text(bed_count);
    	});
    	
    	/* 침대 수 + 버튼 클릭 시 */
    	$(document).on('click', '#bed_add', function(event){
    		let bed_count = $('#bed_count').text();
    		bed_count++;
    		if(bed_count > 14) {
    			bed_count = 14;
    		} 
    		$('#bed_count').text(bed_count);
    	});
    	
    	$(document).on('click', '#begin', function(event){
    		
    		// 게스트 인원 수
    		localStorage.setItem("capacity", $('#guest_count').text());
    		
    		// 침대 수
    		localStorage.setItem("count_bed", $('#bed_count').text());
    		
    		document.location.href="${pageContext.request.contextPath}/hostamenity.do";
    	});
	
    </script>
    
</html>