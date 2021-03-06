package action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.member.dao.MemberDTO;
import com.member.dao.MemberDao;

import mail.Email;

@Controller
public class RegisterController {
	@Autowired
	MemberDao dao;
	@RequestMapping(value="register.books",method=RequestMethod.GET)
	public String move() {
		return "register/register";
	}
		
	
	
	@RequestMapping(value="register.books",method=RequestMethod.POST)
	public ModelAndView regist(@RequestParam("p_email") String p_email,
			@RequestParam("p_passwd") String p_passwd,
			@RequestParam("p_nic") String p_nic,
			@RequestParam("p_name") String p_name
			) {
		MemberDTO dto = new MemberDTO();
		dto.setP_email(p_email);
		dto.setP_passwd(p_passwd);
		dto.setP_name(p_name);
		dto.setP_nic(p_nic);
		dto.setP_num(dao.GetNum());
		dao.Member_Register(dto);
		
		return new ModelAndView("redirect:/main2.books");
	}
	
	@RequestMapping("emailcheck.books")
	public String Submit(HttpServletRequest request) {
		String check_num="오류남";
		try {
			check_num=new Email().renderMergedOutputModel(request.getParameter("email"));
		}catch(Exception  e) {
			e.printStackTrace();
		}
		
		
		
		
		return check_num;
	}
	

}
