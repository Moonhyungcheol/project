package kr.or.pause.login.service;
 
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletResponse;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import kr.or.pause.dto.EmailDTO;
 
 
@Service // 서비스 빈으로 등록
public class EmailService{
 
    @Autowired
    private JavaMailSender mailSender; // root-context.xml에 설정한 bean, 의존성을 주입
    
    @Autowired
    private VelocityEngine velocityengine; //https://m.blog.naver.com/PostView.naver?blogId=greygost&logNo=220846663731&proxyReferer=https:%2F%2Fwww.google.com%2F
    
    public void sendMail(EmailDTO dto) {
        Map<String, Object> model = new HashMap<String,Object>();
       
        
        try {
            // 이메일 객체
        	MimeMessage msg = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(msg, true, "UTF-8");
           
            model.put("content",dto.getMessage());
            String text = VelocityEngineUtils.mergeTemplateIntoString(velocityengine, "kr/or/pause/dto/template.vm", "UTF-8", model);
            
            // 이메일 수신자
            helper.setTo(new InternetAddress(dto.getReceiveMail()));

            // 이메일 발신자
            helper.setFrom( new InternetAddress(dto.getSenderMail(), dto.getSenderName()));
 
            // 이메일 제목 
            helper.setSubject(dto.getSubject());
            
            // 이메일 본문
            helper.setText(text, true);
    
            // 이메일 보내기
            mailSender.send(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       
    }
}
