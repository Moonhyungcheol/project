package kr.or.pause.guest.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.or.pause.dto.SearchCard;
import kr.or.pause.dto.SearchFilter;
import kr.or.pause.guest.service.GuestService;

@RestController
public class GuestRestConroller {
	
	@Autowired
	private GuestService guestService;
	
	@RequestMapping(value = "/filter.do", method = RequestMethod.GET)
	public List<SearchCard> getSearchCardByFilter(SearchFilter searchFilter) {
		System.out.println("filter.do");
		System.out.println(searchFilter);
		List<SearchCard> list = new ArrayList<SearchCard>();
		try {
			list = guestService.getSeachCardByFilter(searchFilter);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
