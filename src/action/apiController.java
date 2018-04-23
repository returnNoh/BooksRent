package action;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.board.util.PagingUtil;
import com.books.dao.BooksDTO;
import com.books.dao.BooksDao;
import com.member.dao.MemberDTO;
import com.member.dao.MemberDao;

import mail.Email;

@Controller
public class apiController {
	@Autowired
	BooksDao book_dao;
	@Autowired
	MemberDao mem_dao;
	
	
	@RequestMapping(value="newbookListAPI.books",method=RequestMethod.GET)
	public ModelAndView newbookList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("books/newbooksList");
		int next = 0;
			if(request.getParameter("index")!=null) {
				next = Integer.parseInt(request.getParameter("index"));
				next = next*3;
			}
			
		
			mav.addObject("list", book_dao.newBookList(next));	
		
		return mav;
	}
	
	@RequestMapping(value="newbookListAPI.books",method=RequestMethod.POST)
	public ModelAndView newbookList2(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("jsonView");
		int next = 0;
			if(request.getParameter("index")!=null) {
				next = Integer.parseInt(request.getParameter("index"));
				next = next*3;
			}
			
		List<BooksDTO> list = book_dao.newBookList(next);
		if(list.isEmpty()) {
			return null;
		}
			mav.addObject("list", list);
		
		return mav;
	}
	
	
	@RequestMapping(value="bookListAPI.books",method=RequestMethod.GET)
	public ModelAndView bookListAPI(
			@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			@RequestParam(value="keyField",defaultValue="") String keyField,
			@RequestParam(value="keyWord",defaultValue="") String keyWord) {
		ModelAndView mav = new ModelAndView("jsonView");
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		int count = book_dao.bookListCount(map);
		PagingUtil page = new PagingUtil(currentPage,count,3,3,"bookList.books");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
			if(count>0) {
			mav.addObject("booklist", book_dao.bookList(map));
			}
//			mav.addObject("count",count);
//			mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	@RequestMapping(value="registerAPI.books",method=RequestMethod.POST)
	public ModelAndView regist(@RequestParam("p_email") String p_email,
			@RequestParam("p_passwd") String p_passwd,
			@RequestParam("p_nic") String p_nic,
			@RequestParam("p_name") String p_name
			) {
		
		ModelAndView mav = new ModelAndView("jsonView");
		
		Boolean result = false;
		
		try {
		MemberDTO dto = new MemberDTO();
		dto.setP_email(p_email);
		dto.setP_passwd(p_passwd);
		dto.setP_name(p_name);
		dto.setP_nic(p_nic);
		dto.setP_num(mem_dao.GetNum());
		mem_dao.Member_Register(dto);
		result = true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		mav.addObject("result",result);
		
		
		
		
		return mav;
	}
	
	
	
	@RequestMapping("loginAPI.books")
	public ModelAndView LoginAPI(HttpServletRequest request) {
//		@RequestParam("p_email") String p_email,
//		@RequestParam("p_passwd") String p_passwd,
		
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		
		
		ModelAndView mav = new ModelAndView("redirect:/main2.books");
		String p_email = request.getParameter("p_email");
		String p_passwd = request.getParameter("p_passwd");
		MemberDTO dto = new MemberDTO();
		dto.setCon_time(time);
		dto.setP_email(p_email);
		dto.setP_passwd(p_passwd);
		System.out.println(p_email+p_passwd);
		//로그인  성공유무 제외 기록 메소드
		mem_dao.Log_Insert(dto);
		
		
		// 로그인 정보 확인
		String result="";
		result = mem_dao.Login(dto);
		

		
		if(result!="") { // 로그인정보가 있을경우
			//request.getSession().setAttribute("p_email", check.getP_email());
			mav.addObject("result", result);
			System.out.println("성공이다!!!!!");
			mem_dao.Log_Update(dto);
			//로그인 성공시 성공유무를  데이터베이스에 추가해주기
		}else {
			//ajax로 문자열만 리턴받을 방법은?
			//
			System.out.println("저는 빠가입니다");
			mav.addObject("result", "정보없음");
		}
		
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
