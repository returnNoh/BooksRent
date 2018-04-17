package com.books.dao;

import java.sql.Timestamp;

public class BooksSellDTO {
	private int book_num;
	private String p_email;
	
	
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
	public Timestamp getTime_sell() {
		return time_sell;
	}
	public void setTime_sell(Timestamp time_sell) {
		this.time_sell = time_sell;
	}
	private Timestamp time_sell;
}
