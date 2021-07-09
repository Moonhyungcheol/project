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
	
	<style>
	.upload_flex {
		display: flex;
		flex-wrap: wrap;
		flex-direction: row;
		justify-content: center;
		width: 100%;
		height: 100%;
	}
	
	.display_none {
		display: none;
	}
	
	.display_flex {
		width: 100%;
		height: 40%;
	}
	
	::-webkit-scrollbar { display: none; }
	</style>
	
	
<title>사진 업로드</title>
</head>
<body>

	<div class="grid-container">
		<div class="item1">
		<h2>이제, 숙소 사진을 올릴</h2><hr>
		<h2>차례입니다.</h2>
		</div>
		<div class="item2">
			<button id="exit">나가기</button>
		</div>
		<div class="item3"></div>  
		<div class="item7" style="overflow: auto; overflow-y: scroll">
		
			<div class="display_none">
				<h4><b>어때요 사진이 마음에 드시나요?</b></h4>
				<h5>드래그하여 순서변경</h5>
			</div>
			
			<div class="uploadbox">
				<h1>🖼</h1>
				<h4><b>여기로 사진을 끌어다 놓으세요.</b></h4><br>
				<h4>5장 이상의 사진을 올리세요.</h4>
				<h5><u>기기에서 업로드</u></h5>
			</div>
			
			<div class="display_flex display_none">
				<div class="upload_flex">
					<div class="uploadbox2"></div>
					<div class="uploadbox2"></div>
				</div>
				
				<div class="upload_flex">
					<div class="uploadbox2"></div>
					<div class="uploadbox2"></div>
				</div>
			</div>
		</div>
		
		<div class="item5">
			<button id="begin" disabled>다음</button>
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
    
    let count = 0;
    
    $('.uploadbox')
	.on("dragover", dragOver)
	.on("dragleave", dragOver)
	.on("drop", uploadFiles);
    
    $(document)
    .on("dragover", ".uploadbox2", dragOver)
	.on("dragleave", ".uploadbox2", dragOver)
	.on("drop", ".uploadbox2", uploadFiles);

	 function dragOver(e){
	   e.stopPropagation();
	   e.preventDefault();
	   if (e.type == "dragover") {
	     $(e.target).css({
	       "background-color": "black",
	       "outline-offset": "-20px"
	     });
	   } else {
	       $(e.target).css({
	       "background-color": "gray",
	       "outline-offset": "-10px"
	     });
	     }
	 }
	
	 function uploadFiles(e) {
	     e.stopPropagation();
	     e.preventDefault();
	     dragOver(e);
	   
	     e.dataTransfer = e.originalEvent.dataTransfer;
	     var files = e.target.files || e.dataTransfer.files;
	     if (files.length > 1) {
	         alert('하나만 올려라.');
	         return;
	     }
	     if (files[0].type.match(/image.*/)) {
	    	 
	    	 count++;
	    	 
	    	 $('.uploadbox').empty();
	    	 
             $(e.target).css({
	             "background-image": "url(" + window.URL.createObjectURL(files[0]) + ")",
	             "outline": "none",
	             "background-size": "100% 100%"
	         });
             
             moreImageUploadbox();
             
             if(count >= 5) {
            	 $('#begin').attr("disabled", false);
             }
             
	     }else{
	       alert('이미지가 아닙니다.');
	       return;
	     }
	 }
	
	 function moreImageUploadbox() {
		 
		 let display = document.querySelectorAll('.display_none');
		 
		 $.each(display, function(index, element) {
			$(element).removeClass('display_none'); 
		 });
		 
		 $('.uploadbox').css({
			"width": "80%",
			"height": "80%"
		 });
		 
	 }
	 
	 $(document).on("click", '#begin', function(event){
		document.location.href = "${pageContext.request.contextPath}/hostroomname.do"; 
	 });
    </script>
    
</html>