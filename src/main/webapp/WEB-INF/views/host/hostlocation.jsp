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
	
	<!-- 부트스트랩 cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<title>숙소 위치 정하기</title>
</head>
<body>

	<div class="grid-container">
		<div class="item1">
		<h2>숙소의 위치는 어디인가요?</h2>
		</div>
		<div class="item2">
			<button id="exit">나가기</button>
		</div>
		<div class="item3"></div>  
		<div class="item4" text-align="center">
			<!-- 주소입력 -->
			<div class="booking-form" style="width: 75%">
				<form id="location-form" action="hostlocation.do" method="post">
					<!-- kakao api 주소 얻기 -->
					<div class="check-date">
						<input type="button" onclick="getZipcode()" value="우편번호 찾기">
					</div>
					
					<!-- 우편번호 -->
					<div class="check-date">
						<label for="zip_code">우편번호</label>
						<input type="text" id="zip_code" name="zip_code" placeholder="우편번호 찾기를 눌러 입력해주세요" readonly="readonly" required />
					</div>
					
					<!-- 주소 -->
					<div class="check-date">
						<label for="addr">주소</label>
						<input type="text" id="addr" name="addr" placeholder="우편번호 찾기를 눌러 입력해주세요" readonly="readonly" required />
					</div>
					
					<!-- 상세주소 -->
					<div class="check-date">
						<label for="addr_detail">상세주소</label>
						<input type="text" id="addr_detail" name="addr_detail" placeholder="상세주소를 입력해 주세요." />
					</div>
					
					<button type="submit" id="submit">확인</button>
				</form>
			</div>
			
			
			<!-- 지도 -->
			<div id="map" style="width:75%;height:75%;margin-top:10px;display:none"></div>
			
			
			
		</div>
		<div class="item5">
			<button type="submit" form="location-form" id="begin" disabled>다음</button>
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
    
    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e725ab0c65b28b7132e6b117997e6db1&libraries=services"></script>
<script>

	let data1;

    function getZipcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	
            	data1 = data;
            	
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    /* // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr; */
                
                } /* else {
                    document.getElementById("sample6_extraAddress").value = '';
                } */

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode;
                document.getElementById('addr').value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr_detail").focus();
            }
        }).open();
    }
    
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

	//지도를 미리 생성
	var map = new daum.maps.Map(mapContainer, mapOption);
	//주소-좌표 변환 객체를 생성
	var geocoder = new daum.maps.services.Geocoder();
	//마커를 미리 생성
	var marker = new daum.maps.Marker({
	    position: new daum.maps.LatLng(37.537187, 127.005476),
	    map: map
	});
    
    function viewMap() {
        // 주소로 상세 정보를 검색
        geocoder.addressSearch(data1.address, function(results, status) {
            // 정상적으로 검색이 완료됐으면
            if (status === daum.maps.services.Status.OK) {

                var result = results[0]; //첫번째 결과의 값을 활용

                // 해당 주소에 대한 좌표를 받아서
                var coords = new daum.maps.LatLng(result.y, result.x);
                // 지도를 보여준다.
                mapContainer.style.display = "block";
                map.relayout();
                // 지도 중심을 변경한다.
                map.setCenter(coords);
                // 마커를 결과값으로 받은 위치로 옮긴다.
                marker.setPosition(coords)
            }
        });
    }
    
    $(document).on('click', '#submit', function(event){
    	event.preventDefault();
    	
    	if($('#zipcode').val() == "" || $('#addr').val() == ""){
    		alert("주소를 입력해 주세요.");
    		$("#begin").attr("disabled", true);
    	} else {
    		$('.booking-form').addClass('d-none');	
    		viewMap();
    		$("#begin").attr("disabled", false);
    	}
    });
    
    /* $(document).on('click', '#begin', function(event){
    	
    	 // 우편번호 저장
    	localStorage.setItem("zip_code", $('#zip_code').val());
    	
    	// 주소 저장
    	localStorage.setItem("addr", $('#addr').val());
    	
    	// 상세 주소 저장
    	localStorage.setItem("addr_detail", $('#addr_detail').val()); 
    	
    	 document.location.href="${pageContext.request.contextPath}/hostcapacity.do"; 
    	
    	console.log(document.querySelector('#location-form'));
    	
    	document.querySelector('#location-form').submit();
    }); */
    
    
    
</script>
    
</html>