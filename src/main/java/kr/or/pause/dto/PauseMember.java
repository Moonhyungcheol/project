package kr.or.pause.dto;



public class PauseMember {
	
	int tagnumber;
	String phone_number;
	String email;
	String name;
	String password;
	String profile_img;
	String coupon;
	int enabled;
	int type_no;
	
	public PauseMember() {
		
	}
	
	public PauseMember(String phone_number, String password) {
		super();
		this.phone_number = phone_number;
		this.password = password;
	}
	
	public PauseMember(int tagnumber, String phone_number, String email, String name, String password, int enabled) {
		super();
		this.tagnumber = tagnumber;
		this.phone_number = phone_number;
		this.email = email;
		this.name = name;
		this.password = password;
		this.enabled = enabled;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTagnumber() {
		return tagnumber;
	}

	public void setTagnumber(int tagnumber) {
		this.tagnumber = tagnumber;
	}

	@Override
	public String toString() {
		return "PauseMember [tagnumber=" + tagnumber + ", phone_number=" + phone_number + ", email=" + email + ", name="
				+ name + ", password=" + password + ", profile_img=" + profile_img + 
				 ", coupon=" + coupon + ", enabled=" + enabled + ", type_no=" + type_no + "]";
	}

	
	
	
	

}
