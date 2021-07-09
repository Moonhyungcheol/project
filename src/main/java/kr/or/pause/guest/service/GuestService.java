package kr.or.pause.guest.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.pause.dto.DetailPage;
import kr.or.pause.dto.SearchCard;
import kr.or.pause.dto.SearchFilter;
import kr.or.pause.guest.dao.GuestDao;

@Service
public class GuestService {
	
	@Autowired
	private SqlSession sqlsession;
	
	public List<SearchCard> getSearchCard(int capacity, String addr, String check_in, String check_out) throws ClassNotFoundException, SQLException{
		
		List<SearchCard> list = new ArrayList<SearchCard>();
		GuestDao guestDao = sqlsession.getMapper(GuestDao.class);
		list = guestDao.getSearchCard(capacity, addr, check_in, check_out);
		
		return list;
	}
	
	public List<SearchCard> getSeachCardByFilter(SearchFilter searchfilter) throws ClassNotFoundException, SQLException{
		
		List<SearchCard> list = new ArrayList<SearchCard>();
		GuestDao guestDao = sqlsession.getMapper(GuestDao.class);
		list = guestDao.getSearchCardByFilter(searchfilter);
		
		return list;
	}
	
	public DetailPage getPageDetail(int no) throws ClassNotFoundException, SQLException {
		
		GuestDao guestDao = sqlsession.getMapper(GuestDao.class);
		DetailPage detailpage = null;
		detailpage = guestDao.getDetailPage(no);
		
		return detailpage;
	}
}
