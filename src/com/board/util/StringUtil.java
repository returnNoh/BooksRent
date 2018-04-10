package com.board.util;

public class StringUtil {
	public static String parseBr(String msg){
		
		if(msg == null) return null;
		//엔터를 <br>로 바꾸는것
		return msg.replace("\r\n", "<br>")
                  .replace("\n", "<br>");
	}
}