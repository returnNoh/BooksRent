package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//@Controller
public class LogoutAction implements CommandAction {

	//@RequestMapping("/logout.books")
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		
		
		
		request.getSession().removeAttribute("id");
		
		
		return "/main.jsp";
	}

}
