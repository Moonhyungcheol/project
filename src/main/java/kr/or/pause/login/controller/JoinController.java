package kr.or.pause.login.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.pause.dto.EmailDTO;
import kr.or.pause.dto.PauseMember;
import kr.or.pause.login.service.JoinService;
import kr.or.pause.login.util.Coolsms;

@Controller
public class JoinController {
	
	@Autowired
	private JoinService joinservice;
	
	@Autowired
	private kr.or.pause.login.service.EmailService emailservice;
	
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	@ResponseBody
	   @RequestMapping(value = "/sendSms.do", method = RequestMethod.POST)
	     public String sendSms(HttpServletRequest request , Model model) throws Exception {

	       String api_key = "NCSKKQUQ91ALLYG8";
	       String api_secret = "ZZBRFALJ4JXDLHL7QEVXTJX7AGKM71MD";
	       Coolsms coolsms = new Coolsms(api_key, api_secret);
	       
	       HashMap<String, String> set = new HashMap<String, String>();
	       System.out.println((String)request.getParameter("phone_number"));
	       set.put("to", (String)request.getParameter("phone_number")); // 받는 사람
	       set.put("from", "01027340740" ); // 발신번호
	       set.put("text", "안녕하세요 인증번호는 ["+(String)request.getParameter("text")+"]입니다"); // 문자내용
	       set.put("type", "SMS"); // 문자 타입

	       System.out.println(set);
	       JSONObject result = coolsms.send(set); // 보내기&전송결과받기

	       if ((boolean)result.get("status") == true) {
	         // 메시지 보내기 성공 및 전송결과 출력
	         System.out.println("성공");
	        
	       } else {
	         // 메시지 보내기 실패
	         System.out.println("실패");
	         System.out.println(result.get("code")); // REST API 에러코드
	         System.out.println(result.get("message")); // 에러메시지
	       }
	       
	       model.addAttribute("phonenumber", request.getParameter("phone_number"));
	      
	       return "suc";
	     }
	
	@ResponseBody
	@RequestMapping("send.do") // 확인 (메일발송) 버튼을 누르면 맵핑되는 메소드
	//public String send(kr.or.pause.dto.EmailDTO dto, Model model) {
	public Model send(HttpServletRequest request, Model model) {
		
		try {
			
			kr.or.pause.dto.EmailDTO dto = null;
			dto = new EmailDTO((String)request.getParameter("receiveMail"),(String)request.getParameter("message"));
			 emailservice.sendMail(dto); // dto (메일관련 정보)를 sendMail에 저장함
			model.addAttribute("message", "이메일이 발송되었습니다."); // 이메일이 발송되었다는 메시지를 출력시킨다.
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "이메일 발송 실패..."); // 이메일 발송이 실패되었다는 메시지를 출력
		}
		return null; // 실패했으므로 다시 write jsp 페이지로 이동함
	}
	
	@RequestMapping(value ="/join.do" , method = RequestMethod.POST)
	public String insertMember(@RequestParam("phone_number") String phone_number, 
							   @RequestParam("email") String email,
							   @RequestParam("name") String name,
							   @RequestParam("password") String password) {
							   		
		
		PauseMember pausemember = new PauseMember(0, phone_number, email, name, password, 0);
		
		
		// 비밀번호 암호화
		pausemember.setPassword(this.bCryptPasswordEncoder.encode(password));
		
		try {
			
				joinservice.insert(pausemember);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// return "redirect:로그인 페이지";
		return "pause_main";
	}
	
		// 휴대폰 번호 중복 검사
	
	@ResponseBody
	@RequestMapping(value ="/phonecheck.do", method = RequestMethod.POST)
	public boolean phoneCheck(String phone_number) {
		
		boolean phoneCheck = false;
		int row = joinservice.phoneCheck(phone_number);
		
		if(row > 0) {
			
			phoneCheck = false;
			
		} else {
			phoneCheck = true;
			
		}
		
		return phoneCheck;
		
	}
	
	// 로그인창 이동
	@RequestMapping(value ="/login.do" , method = RequestMethod.GET) 
	public String loginPage() {
		return "pause_login";
	}
	
	// 메인화면으로 이동 
	@RequestMapping(value ="/main.do")
	public String goMain() {
		return "pause_main";
	}
	
	// 마이페이지 이동
			@RequestMapping(value = "/mypage.do" , method = RequestMethod.GET)
			public String goMemberPage() {
				return "pause_member";
			}
	

	
}
