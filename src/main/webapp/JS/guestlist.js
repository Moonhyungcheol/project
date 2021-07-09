/**
 * 
 */
let search = {
			capacity : localStorage.getItem('capacity'),
			check_in : localStorage.getItem('check_in'),
			check_out : localStorage.getItem('check_out'),
			addr : localStorage.getItem('addr')
	}
	console.log(search);
	//필터
	let fil = {
			"kitchen":0,
			"laundry":0,
			"wifi":0,
			"count_bed":1,
			"airconditioner":0,
			"free_parking":0,
			"bbq_grill":0,
			"count_bath":1,
			"shower_supplies":0,
			"cooking_item":0,
			"tv":0,
			"ott":0,
			"available_smoking":0,
			"available_pet":0,
			"min":0,
			"max":999999,
			"addr":localStorage.getItem('addr'),
			"capacity":localStorage.getItem('capacity'),
			"check_in":localStorage.getItem('check_in'),
			"check_out":localStorage.getItem('check_out')
	}
	
	//침대 갯수 초기화
	let bedNum = 1;
	
	//욕실 갯수 초기화
	let bathNum = 1;
	//필터 적용한 숙소검색결과 문자열 저장
	let str = "";
	//////////////////////////////////////////////
	//주방 체크
	let kitchen = document.getElementById('kitchen');
	let check_kit = () => {
		if(kitchen.checked ==true){
			fil.kitchen = kitchen.value;
		}else{
			fil.kitchen = 0;
		}
	}
	//세탁기 체크
	let laundry = document.getElementById('laundry');
	let check_lau = () => {
		if(laundry.checked == true){
			fil.laundry = laundry.value;
		}else{
			fil.laundry = 0;
		}
	}
	//와이파이 체크
	let wifi = document.getElementById('wifi');
	let check_wifi = () => {
		if(wifi.checked == true){
			fil.wifi = wifi.value;
		}else{
			fil.wifi = 0;
		}
	}
	//에어컨 체크
	let airconditioner = document.getElementById('airconditioner');
	let check_AC = () => {
		if(airconditioner.checked == true){
			fil.airconditioner = airconditioner.value;
			console.log(fil.airconditioner);
		}else{
			fil.airconditioner = 0;
		}
	}
	
	
	//무료주차 체크
	let free_parking = document.getElementById('free_parking');
	let check_free = () => {
		if(free_parking.checked == true){
			fil.free_parking = free_parking.value;
		}else{
			fil.free_parking = 0;
		}
	}
	//바베큐 체크
	let bbq_grill = document.getElementById('bbq_grill');
	let check_bbq = () => {
		if(bbq_grill.checked == true){
			fil.bbq_grill = bbq_grill.value;
		}else{
			fil.bbq_grill = 0;
		}
	}
	
	
	//침실 갯수 정하기
	let count_bed = document.getElementById('count_bed');
	count_bed.innerHTML = bedNum;
	//침실 갯수 [-]
	let bed_minus = () => {
		--bedNum;
		if(bedNum < 1){
			bedNum = 1;
			count_bed.innerHTML = bedNum;
			fil.count_bed = bedNum;
		}else{
			count_bed.innerHTML = bedNum;
			fil.count_bed = bedNum;
		}
	}
	//침실 갯수 [+]
	let bed_pluse = () => {
		++bedNum;
		if(bedNum >= 15){
			bedNum = 14;
			count_bed.innerHTML = bedNum;
			fil.count_bed = bedNum;
			console.log(fil.count_bed);
		}else{
			count_bed.innerHTML = bedNum;
			fil.count_bed = bedNum;
			console.log(fil.count_bed);
		}
	}
	
	//욕실 갯수
	let count_bath = document.getElementById('count_bath');
	count_bath.innerHTML = bathNum;
	//침실 갯수 [-]
	let bath_minus = () => {
		--bathNum;
		if(bathNum < 1){
			bathNum = 1;
			count_bath.innerHTML = bathNum;
			fil.count_bath = bathNum;
			console.log(fil.count_bath);
		}else{
			count_bath.innerHTML = bathNum;
			fil.count_bath = bathNum;
			console.log(fil.count_bath);
		}
	}
	//침실 갯수 [+]
	let bath_pluse = () => {
		++bathNum;
		if(bathNum >= 15){
			bathNum = 14;
			count_bath.innerHTML = bathNum;
			fil.count_bath = bathNum;
			console.log(fil.count_bath);
		}else{
			count_bath.innerHTML = bathNum;
			fil.count_bath = bathNum;
			console.log(fil.count_bath);
		}
	}
	//샤워용품 체크
	let shower_supplies = document.getElementById('shower_supplies');
	let check_sup = () => {
		if(shower_supplies.checked == true){
			fil.shower_supplies = shower_supplies.value;
		}else{
			fil.shower_supplies = 0;
		}
	}
	//주방용품 체크
	let cooking_item = document.getElementById('cooking_item');
	let check_cook = () => {
		if(cooking_item.checked == true){
			fil.cooking_item = cooking_item.value;
		}else{
			fil.cooking_item = 0;
		}
	}
	//TV 체크
	let TV = document.getElementById('TV');
	let check_TV = () => {
		if(TV.checked == true){
			fil.tv = TV.value;
		}else{
			fil.tv = 0;
		}
	}
	//OTT 체크
	let OTT = document.getElementById('OTT');
	let check_OTT = () => {
		if(OTT.checked == true){
			fil.ott = OTT.value;
		}else{
			fil.ott = 0;
		}
	}
	//흡연 가능 여부 체크
	let available_smoking = document.getElementById('available_smoking');
	let check_smoking = () => {
		if(available_smoking.checked == true){
			fil.available_smoking = available_smoking.value;
		}else{
			fil.available_smoking = 0;
		}
	}
	//애완동물 동반 가능 여부 체크 
	let available_pet = document.getElementById('available_pet');
	let check_pet = () => {
		if(available_pet.checked == true){
			fil.available_pet = available_pet.value;
		}else{
			fil.available_pet = 0;
		}
	}
	
	let check_fil = function(){
		check_kit();
		check_lau();
		check_wifi();
		check_AC();
		check_free();
		check_bbq();
		check_sup();
		check_cook();
		check_TV();
		check_OTT();
		check_smoking();
		check_pet();
		console.log(fil);
		$.ajax(
			{
				type : 'GET',
				url  :'filter.do',
				data : fil,
				dataType : 'json',
				success : (data) => {
					$('#roombox').empty();
					alert('성공');
					for(let i = 0; i < data.length; i++){
						str += '<div class="col-lg-4 col-md-6">'
							+ '<div class="room-item">'
							+ '<img src="img/room/room-6.jpg" alt="">'
							+ '<div class="ri-text">'
							+ '<h4>' + data[i].name + data[i].no + '</h4>'
							+ '<h3>' + data[i].cost +'₩<span>/1박</span></h3>'
							+ '<table>'
							+ '<tbody>'
							+ '<tr>'
							+ '<td class="r-o">Size:</td>'
							+ '<td>30 ft</td>'
							+ '</tr>'
							+ '<tr>'
							+ '<td class="r-o">인원수:</td>'
							+ '<td> 최대' + data[i].capacity + '</td>'
							+ '</tr>'
							+ '<tr>'
							+ '<td class="r-o">Bed:</td>'
							+ '<td>King Beds</td>'
							+ '</tr>'
							+ '<tr>'
							+ '<td class="r-o">Services:</td>'
							+ '<td>Wifi, Television, Bathroom,...</td>'
							+ '</tr>'
							+ '</tbody>'
							+ '</table>'
							+ '<a href="detailpage.do?no='+ data[i].no + '" class="primary-btn">More Details</a>'
							+ '</div>'
							+ '</div>'
							+ '</div>'
					};
					$('#roombox').append(str);
					str = "";
				},
				error : function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					alert("error: 실패다 임마");
				}
			}
		)
	}
	let open_filter_modal = () => {
		document.querySelector('.modal-filter').style.display ='block';
		document.querySelector('body').style.overflow = 'hidden';
	    document.querySelector('body').style.hight = '100%';
	}
	let close_filter_modal = () => {
		document.querySelector('.modal-filter').style.display ='none';
		document.querySelector('body').style.overflow = 'auto';
	    document.querySelector('body').style.hight = '100%';
	}
	document.getElementById('show-filter-modal').onclick = open_filter_modal;
	document.getElementById('modal-filter-close').onclick = close_filter_modal;
	
	console.log(check_fil);
	document.getElementById("filttering").onclick = check_fil;
	document.getElementById('bed_minus_btn').onclick = bed_minus;
	document.getElementById('bed_pluse_btn').onclick = bed_pluse;
	document.getElementById('bath_minus_btn').onclick = bath_minus;
	document.getElementById('bath_pluse_btn').onclick = bath_pluse;
