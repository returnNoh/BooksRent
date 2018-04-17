package action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.board.util.PagingUtil;
import com.books.dao.BooksDao;

@Controller
public class MyPageController {
	
	@Autowired
	BooksDao dao;
	
	@RequestMapping("mypage.books")
	public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("mypage/mypage");
//		
//		Map<String,Object> map = new HashMap<String,Object>();
//		map.put("keyField", keyField);
//		map.put("keyWord", keyWord);
//		int count = dao.bookListCount(map);
//		PagingUtil page = new PagingUtil(currentPage,count,3,3,"bookList.books");
//		map.put("start", page.getStartCount());
//		map.put("end", page.getEndCount());
		
			String p_email=(String) request.getSession().getAttribute("p_email");
			
			mav.addObject("rentList",dao.rentBookList(p_email));
			mav.addObject("myList", dao.myBookList(p_email));

		return mav;
	}
	
	

}
