package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String result="";
		
		//로그인 확인 DAO
		
		if(request.getParameter("id")!=null){
			
			HttpSession session = request.getSession();
			session.setAttribute("id", (String)request.getParameter("id"));
			
		}else{
			result="로그인 정보가 없습니다";
		}
		
		request.setAttribute("result", result);
		return "/main.jsp";
	}

}
