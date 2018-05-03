package com.board.util;

public class SecureTest {

	public static String convert(String input) {
		
		if(input!=null){
			input=input.replaceAll("<","&lt;");
			input=input.replaceAll(">","&gt;");
			//추가
			input = input.replaceAll("\\(","&#40;");
			input = input.replaceAll("\\)","&#41;");
			input = input.replaceAll("\"","&quot"); // 문자열 인식을 위한 역슬러시\
			input = input.replaceAll("\'","&apos");
		}else{
			return null;
		}
		
		
		return input;
	}
}
