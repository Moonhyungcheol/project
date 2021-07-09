package kr.or.pause.guest.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.pause.dto.DetailPage;
import kr.or.pause.dto.SearchCard;
import kr.or.pause.dto.SearchFilter;

public interface GuestDao {
	
	//메인 화면에서 검색한 결과
	public List<SearchCard> getSearchCard(int capacity, String addr, String check_in, String check_out) throws ClassNotFoundException, SQLException;
	//필터를 적용하여 검색한 결과
	public List<SearchCard> getSearchCardByFilter(SearchFilter searchFilter) throws ClassNotFoundException, SQLException;
	//상세 페이지 보기
	public DetailPage getDetailPage(int no) throws ClassNotFoundException , SQLException;
	
}
