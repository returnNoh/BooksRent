package com.books.dao;

import java.sql.Timestamp;

public class BooksRentDTO {
	
	private int book_num;
	private String p_email;
	private Timestamp tiem_rent_start,time_rent_end;
	
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public String getP_email() {
		return p_email;
	}
	public void setP_email(String p_email) {
		this.p_email = p_email;
	}
	public Timestamp getTiem_rent_start() {
		return tiem_rent_start;
	}
	public void setTiem_rent_start(Timestamp tiem_rent_start) {
		this.tiem_rent_start = tiem_rent_start;
	}
	public Timestamp getTime_rent_end() {
		return time_rent_end;
	}
	public void setTime_rent_end(Timestamp time_rent_end) {
		this.time_rent_end = time_rent_end;
	}

}
