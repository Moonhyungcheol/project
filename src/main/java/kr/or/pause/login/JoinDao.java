package kr.or.pause.login;

import kr.or.pause.dto.PauseMember;

public interface JoinDao {
	
	// 사이트 자체 회원 가입 
	public void insert(PauseMember member);
	
	// 중복된 휴대폰 번호 막기
	public int phoneCheck(String phone_number);
	
	
	// 회원 정보 불러오기
	public PauseMember getPauseMember(String phone_number);
	
	// 회원 정보 수정하기 (이름)
	public void updateName (PauseMember member);
	

}
