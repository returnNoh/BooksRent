package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.board.util.PagingUtil;
import com.books.dao.BooksDTO;
import com.books.dao.BooksDao;

@Controller
public class BookListController {
	@Autowired
	BooksDao dao;
	
	@RequestMapping(value="bookList.books",method=RequestMethod.GET)
	public ModelAndView bookList(
			@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			@RequestParam(value="keyField",defaultValue="all") String keyField,
			@RequestParam(value="keyWord",defaultValue="") String keyWord) {
		ModelAndView mav = new ModelAndView("books/booksList");
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		int count = dao.bookListCount(map);
		PagingUtil page = new PagingUtil(keyField,keyWord,currentPage,count,3,3,"bookList.books");
		map.put("start", page.getStartCount()-1);
//		map.put("end", page.getEndCount());
		map.put("end", 3); // 귀찮으니 정수로 그냥 주자.. mysql 장장맨
		//System.out.println(page.getEndCount()+"확인용");
		
		System.out.println("값없나"+count+page.getStartCount());
		
		if(count>0) {
			mav.addObject("list", dao.bookList(map));
			}
			mav.addObject("count",count);
			mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	@RequestMapping(value="newbookList.books",method=RequestMethod.GET)
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
	
	@RequestMapping(value="newbookList.books",method=RequestMethod.POST)
	public ModelAndView newbookList2(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("jsonView");
		int next = 0;
			if(request.getParameter("index")!=null) {
				next = Integer.parseInt(request.getParameter("index"));
				next = next*3;
			}
			
		List<BooksDTO> list = dao.newBookList(next);
		if(list.isEmpty()) {
			return null;
		}
			mav.addObject("list", list);
		
		return mav;
	}
	
	
	@RequestMapping(value="bookListAPI.books",method=RequestMethod.GET)
	public ModelAndView bookListAPI(
			@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			@RequestParam(value="keyField",defaultValue="all") String keyField,
			@RequestParam(value="keyWord",defaultValue="") String keyWord) {
		ModelAndView mav = new ModelAndView("jsonView");
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		int count = dao.bookListCount(map);
		System.out.println("몇개있니"+count);
		//PagingUtil page = new PagingUtil(currentPage,count,3,3,"bookList.books");
		map.put("start", 0);
		map.put("end", 3);
		
		List list = null ;
		
		if(count>0) {
			list = dao.bookList(map);
			System.out.println("list있니"+list);
			mav.addObject("booklist", list);
			}
//			mav.addObject("count",count);
//			mav.addObject("pagingHtml", page.getPagingHtml());
		
		return mav;
	}
	
	@RequestMapping(value="bookDetail.books",method=RequestMethod.POST)
	public ModelAndView bookDetail(HttpServletRequest request,@RequestParam("number") int num) {
		ModelAndView mav = new ModelAndView("jsonView");
		
			
		BooksDTO detail = null;
		detail=dao.detail(num);
		
		if(detail==null) {
			return null;
		}
			mav.addObject("detail", detail);
		
		return mav;
	}
	
	
	
	
	
}
