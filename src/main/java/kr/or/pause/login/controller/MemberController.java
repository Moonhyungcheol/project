package kr.or.pause.login.controller;
import org.springframework.beans.factory.annotation.Autowired;
import java.security.Principal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.pause.dto.PauseMember;
import kr.or.pause.login.service.JoinService;

@Controller

public class MemberController {
	
	@Autowired
	private JoinService joinservice;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@RequestMapping(value="memberconfirm.do",method=RequestMethod.GET)
	public String memberConfirm(){
		return "pause_member";
	}
	
	
	@RequestMapping(value="memberconfirm.do",method=RequestMethod.POST)
	public String memberConfirm(@RequestParam("password") String password , Principal principal) {
		
		String view = "";
		
		
		// 회원정보 
		PauseMember pausemember = joinservice.getPauseMember(principal.getName());
		
		String encodedPassword = pausemember.getPassword();
		
		boolean result = bCryptPasswordEncoder.matches(password, encodedPassword);
		
		if(result) {
			view ="redirect:memberupdate.do";
		} else{
			view ="redirect:memberconfirm.do";
		}
		
		return view;
	}
	
	@RequestMapping(value="memberupdate.do", method=RequestMethod.GET)
	public String memberUpdate(Model model, Principal principal){
		PauseMember pausemember = joinservice.getPauseMember(principal.getName());
		model.addAttribute("member", pausemember);
		return "pause_update";
	}
	
	@RequestMapping(value="memberupdate.do", method=RequestMethod.POST)
	public String memberUpdate(Model model, PauseMember member, Principal principal) {
		
		PauseMember updatemember = joinservice.getPauseMember(principal.getName());
		System.out.println(updatemember);
		updatemember.setPhone_number(member.getPhone_number());
		updatemember.setPassword(bCryptPasswordEncoder.encode(member.getPassword()));
		updatemember.setName(member.getName());
		updatemember.setEmail(member.getEmail());
		

		joinservice.updateName(updatemember);
		System.out.println(updatemember);

		
		return "redirect:main.do";
	}

	}


