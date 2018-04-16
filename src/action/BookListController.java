package action;

import java.util.HashMap;
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
import com.books.dao.BooksDao;

@Controller
public class BookListController {
	@Autowired
	BooksDao dao;
	
	@RequestMapping(value="bookList.books",method=RequestMethod.GET)
	public ModelAndView bookList(
			@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			@RequestParam(value="keyField",defaultValue="") String keyField,
			@RequestParam(value="keyWord",defaultValue="") String keyWord) {
		ModelAndView mav = new ModelAndView("books/booksList");
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		int count = dao.bookListCount(map);
		PagingUtil page = new PagingUtil(currentPage,count,3,3,"bookList.books");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		if(count>0) {
			mav.addObject("list", dao.bookList(map));
			}
			mav.addObject("count",count);
			mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	@RequestMapping("newbookList.books")
	public ModelAndView newbookList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("books/newbooksList");
		int next = 0;
			if(request.getParameter("index")!=null) {
				next = Integer.parseInt(request.getParameter("index"));
				next = next*3;
			}
			
		
			mav.addObject("list", dao.newBookList(next));	
		
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
		int count = dao.bookListCount(map);
		PagingUtil page = new PagingUtil(currentPage,count,3,3,"bookList.books");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		if(count>0) {
			mav.addObject("booklist", dao.bookList(map));
			}
//			mav.addObject("count",count);
//			mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	
}
