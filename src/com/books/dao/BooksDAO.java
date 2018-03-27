package com.books.dao;
import java.util.*;

import org.springframework.dao.DataAccessException;


public interface BooksDao {
		
	public List<BooksDTO> bookList(Map<String,String> map);
	
}
