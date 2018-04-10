package com.books.dao;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class BooksDTO {
	private String book_name,book_company,book_tag;
	private int book_num;
	private Timestamp time_book_insert;
//	스프링화에서 추가 - 검색분야 , 검색어 , 파일이름
	private String searchName,searchValue;
	private MultipartFile upload;
	private String book_filename;
	
	
	
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_company() {
		return book_company;
	}
	public void setBook_company(String book_company) {
		this.book_company = book_company;
	}
	public String getBook_tag() {
		return book_tag;
	}
	public void setBook_tag(String book_tag) {
		this.book_tag = book_tag;
	}
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public Timestamp getTime_book_insert() {
		return time_book_insert;
	}
	public void setTime_book_insert(Timestamp time_book_insert) {
		this.time_book_insert = time_book_insert;
	}
	public String getSearchName() {
		return searchName;
	}
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	public String getBook_filename() {
		return book_filename;
	}
	public void setBook_filename(String book_filename) {
		this.book_filename = book_filename;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	
	
}