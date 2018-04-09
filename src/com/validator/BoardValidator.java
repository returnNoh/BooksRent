package com.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.member.dao.MemberDTO;


//유효성검사 -> 사용자로부터 입력받은 값을 검사
//1.Validator인터페이스 상속
public class BoardValidator implements Validator {

	//1. 검사할 대상자인지 아닌지 체크(BoardCommand)DTO 객체
	public boolean supports(Class<?> dto) {
		// TODO Auto-generated method stub
		//형식) 적용시킬 클래스명.class.isAssignableFrom(dto매개변수객체명)
		return MemberDTO.class.isAssignableFrom(dto);//true or false
	}
	//게시판의 글쓰기를 하고자 할 때 유효성을 검사해주는 메소드
	//1.유효성 검사대상자(웹입력) 2.에러가 발생 시 저장할 에러정보객체명
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		//1. 에러가 발생된 객체정보 2.웹상에서 입력받는 필드명
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "p_email", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "p_passwd", "required");
		
	}

}
