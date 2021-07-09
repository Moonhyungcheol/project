package kr.or.pause.host.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.pause.dto.HostRoom;
import kr.or.pause.host.dao.HostDao;

@Service
public class HostService {
	
	@Autowired
	SqlSession sqlsession;
	
	/**
	 * host번호를 저장한다.
	 * 
	 * @param host_no
	 * @return 등록된 경우 1 그렇지 않으면 0
	 */
	public int insertHostRegister(int host_no) {
		HostDao hostdao = sqlsession.getMapper(HostDao.class);
		int result = hostdao.insertHostRegister(host_no);
		return result;
	}
	
	
	/**
	 * host 등록 시 위치정보를 저장한다.
	 * 
	 * @param hostRoom
	 * @return 등록된 경우 1 그렇지 않으면 0
	 */
	public int updateHostLocation(HostRoom hostRoom) {
		HostDao hostdao = sqlsession.getMapper(HostDao.class);
		int result = hostdao.updateHostLocation(hostRoom);
		return result;
	}
	
}
