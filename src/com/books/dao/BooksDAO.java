package com.books.dao;
import java.util.*;

import org.springframework.dao.DataAccessException;


public interface BooksDao {
		
	public List<BooksDTO> bookList(Map<String, Object> map);
	
	public int bookListCount(Map<String, Object> map);
	
	public BooksDTO detail();
	
	public void book_regist(BooksDTO dto);
	
}
