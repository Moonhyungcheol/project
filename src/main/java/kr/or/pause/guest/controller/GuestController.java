package kr.or.pause.guest.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.pause.dto.DetailPage;
import kr.or.pause.dto.SearchCard;
import kr.or.pause.guest.service.GuestService;

@Controller
//@RequestMapping(value = "/assets/")
public class GuestController {
	
	@Autowired
	private GuestService guestservice;
	
	@RequestMapping(value = "hometo.do")
	public String testHome() {
		System.out.println("home.do");
		return "guest/search/test_main";
	}
	
	
	@RequestMapping(value = "search.do", method = RequestMethod.GET )
	public String getSearchCard(int capacity, String addr, String check_in, String check_out, Model model) throws ClassNotFoundException, SQLException{
		
		List<SearchCard> list = new ArrayList<SearchCard>();
		list = guestservice.getSearchCard(capacity, addr, check_in, check_out);
		model.addAttribute("list", list);
		
		return "guest/search/searchlist";
	}
	
	@RequestMapping(value = "detailpage.do", method = RequestMethod.GET)
	public String getPageDetail(int no, Model model) throws ClassNotFoundException, SQLException {
		
		DetailPage detailpage = null;
		detailpage = guestservice.getPageDetail(no);
		model.addAttribute("detail", detailpage);
		
		return "guest/detailpage/detailpage";
	}
	
}
