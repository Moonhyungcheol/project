package kr.or.pause.host.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import kr.or.pause.dto.HostRoom;

public interface HostDao {
	
	@Insert(" INSERT INTO HOST_ROOM(NO, HOST_NO) VALUES(HOST_ROOM_SEQ.NEXTVAL, #{host_no} ) ")
	int insertHostRegister(int host_no);
	
	@Update(" UPDATE HOST_ROOM SET ZIP_CODE = #{zip_code}, ADDR = #{addr}, ADDR_DETAIL = #{addr_detail} WHERE HOST_NO = #{host_no} ")
	int updateHostLocation(HostRoom hostRoom);
	
}
