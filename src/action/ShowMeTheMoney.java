package action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShowMeTheMoney {

	
	@RequestMapping("bookrent.books")
	public ModelAndView BookRent() {
		
		return null;
	}
	
	@RequestMapping("booksell.books")
	public ModelAndView BookSell() {
		
		return null;
	}
	
	
	
}
