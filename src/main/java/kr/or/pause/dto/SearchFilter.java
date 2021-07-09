package kr.or.pause.dto;

import lombok.Data;

@Data
public class SearchFilter {
	//주방 여부
	private String kitchen;
	//세탁기 여부
	private String laundry;
	//와이파이 여부
	private String wifi;
	//침대 갯수
	private int count_bed;
	//에어컨 여부
	private String airconditioner;
	//무료 주차 여부
	private String free_parking;
	//바베큐 여부
	private String bbq_grill;
	//샤워 용품
	private String shower_supplies;
	//주방용품 여부
	private String cooking_item;
	//TV 여부
	private String tv;
	//온더탑 여부
	private String ott;
	//욕실 갯수
	private int count_bath;
	//흡연가능 여부
	private String available_smoking;
	//애완동물 동반 가능 여부
	private String available_pet;
	//최대 금액
	private int max;
	//최소 금액
	private int min;
	//위치
	private String addr;
	//인원수
	private int capacity;
	//체크인 날짜
	private String check_in;
	//체크아웃 날짜
	private String check_out;
}
