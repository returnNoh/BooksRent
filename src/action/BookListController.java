package action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.books.dao.BooksDao;

@Controller
public class BookListController {
	@Autowired
	BooksDao dao;
	
	@RequestMapping(value="bookList.books",method=RequestMethod.GET)
	public ModelAndView bookList() {
		ModelAndView mav = new ModelAndView("books/booksList");
		
		
		
		return mav;
	}
	
	
}
