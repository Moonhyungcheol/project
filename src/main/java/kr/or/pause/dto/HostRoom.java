package kr.or.pause.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class HostRoom {
	private int no;
	private int capacity;
	private String zip_code;
	private String addr;
	private String addr_detail;
	private long cost;
	private String rule;
	private Timestamp check_in;
	private Timestamp check_out;
	private String name;
	private String info;
	private String status;
	private int host_no;
	private String kitchen;
	private String laundry;
	private int count_bed;
	private String wifi;
	private String airconditioner;
	private String free_parking;
	private String bbq_grill;
	private int count_bath;
	private String shower_supplies;
	private String cooking_item;
	private String tv;
	private String ott;
	private String available_smoking;
	private String available_pet;
}
