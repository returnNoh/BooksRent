package action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.books.dao.BooksDao;

@Controller
public class MyPageController {
	
	@Autowired
	BooksDao dao;
	
	@RequestMapping("mypage.books")
	public ModelAndView mypage() {
		
		ModelAndView mav = new ModelAndView("mypage/mypage");
		
		
		
		return mav;
	}
	
	

}
