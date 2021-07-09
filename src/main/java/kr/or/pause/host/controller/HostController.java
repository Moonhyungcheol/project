package kr.or.pause.host.controller;

import java.security.Principal;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.pause.dto.HostRoom;
import kr.or.pause.dto.PauseMember;
import kr.or.pause.host.service.HostService;
import kr.or.pause.login.service.JoinService;

@Controller
public class HostController {
	
	@Autowired
	private HostService hostservice;
	
	@Autowired
	private JoinService joinservice;
	
	//TODO 메인화면 완료 시 TEST CODE 수정
	/*********** TEST CODE ************/
	@RequestMapping("home.do")
	public String hostregister() {
		return "host/hostregisterbegin";
	}
	/*********** TEST CODE ************/

	/**
	 * 호스팅 시작하기 페이지에서 시작하기 버튼 클릭 시
	 * 호스트 번호를 저장한다. 
	 * 
	 * @param host_no
	 * @return 호스트 번호 등록 성공 시 다음 단계로 이동
	 * @since 2021/06/11
	 * @author MHC
	 */
	@RequestMapping(value = "hostlocation.do", method = RequestMethod.GET)
	public String hostlocation(Principal principal) {
		// TODO host table 먼저 insert 후에 숙소 insert할 것(transaction)
		
		/*********** TEST CODE ************/
		PauseMember pausemember = joinservice.getPauseMember(principal.getName());
		
		
		int host_no = pausemember.getTagnumber();
		int result = hostservice.insertHostRegister(host_no);
		/*********** TEST CODE ************/
		String view = "";
		
		// 주소등록 성공시
		if(result > 0) {
			// 주소 정보 입력으로 이동
			view = "host/hostlocation";
		}
		// 주소등록 실패시
		else {
			view = "";
		}
		
		return view;
	}
	
	/**
	 * 호스트 위치정보입력 페이지에서  
	 * 
	 * @param hostRoom
	 * @return 다음 단계로 이동한다.
	 */
	@RequestMapping(value = "hostlocation.do", method = RequestMethod.POST)
	public String insertLocation(HostRoom hostRoom, Principal principal) {
		//TODO 로그인 완료 시 TEST CODE 수정
		/*********** TEST CODE ************/
		hostRoom.setHost_no(1);
		/*********** TEST CODE ************/
		int result = hostservice.updateHostLocation(hostRoom);
		
		String view = "";
		
		// 주소등록 성공시
		if(result > 0) {
			// 수용인원 입력 페이지로 이동한다.
			view = "host/hostcapacity";
		}
		// 주소등록 실패시
		else {
			view = "";
		}
		
		return view;
	}

	@RequestMapping("main1.do")
	public String hostexit() {
		return "host/pause_main";
	}

	@RequestMapping("hostcapacity.do")
	public String hostcapacity() {
		return "host/hostcapacity";
	}

	@RequestMapping("hostamenity.do")
	public String hostamenity() {
		return "host/hostamenity";
	}

	@RequestMapping("beforeroompicture.do")
	public String beforeroompicture() {
		return "host/beforeroompicture";
	}

	@RequestMapping("afterroompicture.do")
	public String afterroompicture() {
		return "host/afterroompicture";
	}

	@RequestMapping("hostroomname.do")
	public String hostroomname() {
		return "host/hostroomname";
	}
	
	@RequestMapping("hostroomintroduce.do")
	public String hostroomintroduce() {
		return "host/hostroomintroduce";
	}
	
	@RequestMapping("hostroomcost.do")
	public String hostroomcost() {
		return "host/hostroomcost";
	}
	
	@RequestMapping("hostrule.do")
	public String hostrule() {
		return "host/hostrule";
	}
	
	@RequestMapping("hostwelcome.do")
	public String hostwelcome() {
		return "host/hostwelcome";
	}
	
	@RequestMapping("hostmainpage.do")
	public String hostmainpage() {
		return "host/hostmainpage";
	}

}








