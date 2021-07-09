package kr.or.pause.login.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.pause.dto.PauseMember;
import kr.or.pause.login.JoinDao;

@Service
public class JoinService {
	
	
	private SqlSession sqlsession;
	
	@Autowired
	public void setSqlsession(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}
	
	// 사이트 자체 회원가입
	public void insert(PauseMember pausemember) {
		JoinDao joindao = sqlsession.getMapper(JoinDao.class);
		
		joindao.insert(pausemember);
	}
	
	// 휴대폰 번호 중복 체크
	public int phoneCheck(String phone_number) {
		
		JoinDao joindao = sqlsession.getMapper(JoinDao.class);
		
		int result = joindao.phoneCheck(phone_number);
		
		return result;
	}
	
	// 회원 정보 불러오기 
	public PauseMember getPauseMember(String phone_number) {
		
		JoinDao joindao = sqlsession.getMapper(JoinDao.class);
		
		PauseMember pausemember = joindao.getPauseMember(phone_number);
		
		return pausemember;
	}
	
	// 회원 수정 
	public void updateName(PauseMember member) {
		JoinDao joindao = sqlsession.getMapper(JoinDao.class);
		
		 joindao.updateName(member);
		System.out.println("서비스");
		
	}

}
