package com.books.dao;
import java.util.*;

import org.springframework.dao.DataAccessException;


public interface BooksDao {
		
	public List<BooksDTO> bookList(Map<String, Object> map);
	
	public int bookListCount(Map<String, Object> map);
	
	public BooksDTO detail(int num);
	
	public void book_regist(BooksDTO dto);
	
	public List<BooksDTO> newBookList(int next);
	
	public List<BooksRentDTO> rentBookList(String p_email);
	
	public List<BooksRentDTO> myBookList(String p_email);
	
}
