package action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.member.dao.MemberDTO;
import com.member.dao.MemberDao;

@Controller
public class Log_InOutController {
	@Autowired
	private MemberDao dao;
	
	
	
	//(value="login.books",method=RequestMethod.POST)
	@RequestMapping("login.books")
	public ModelAndView Login(HttpServletRequest request) {
//		@RequestParam("p_email") String p_email,
//		@RequestParam("p_passwd") String p_passwd,
		ModelAndView mav = new ModelAndView("redirect:/main2.books");
		String p_email = request.getParameter("p_email");
		String p_passwd = request.getParameter("p_passwd");
		MemberDTO check = new MemberDTO();
		check.setP_email(p_email);
		check.setP_passwd(p_passwd);
		System.out.println(p_email+p_passwd);
		//MemberDTO result = dao.Login(check);
		int result = dao.Login(check);
		String result2 = "실패";
		
		
		if(result==1) { // 로그인정보가 있을경우
			//request.getSession().setAttribute("p_email", check.getP_email());
			request.getSession().setAttribute("grade", result);
			System.out.println("성공이다!!!!!");
			result2="성공";
			
		}else {
			//ajax로 문자열만 리턴받을 방법은?
			//
			System.out.println("저는 빠가입니다");
			result2="실패";
		}
		
		
		return mav;
	}
//	
//	@ModelAttribute("command")
//	public MemberDTO forBacking() { //메서드명은 아무거나, 반환형(DTO)
//		System.out.println("다시 처음부터 입력하기위한 초기화");
//	   return new MemberDTO();	//멤버변수값은  초기화가 안된상태
//	}
	
	
	@RequestMapping("logout.books")
	public String Logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/main2.books";
	}


}
