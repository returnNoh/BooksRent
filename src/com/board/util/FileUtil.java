package com.board.util;

import java.io.File;

public class FileUtil {
		//업로드 경로 및 다운로드 경로 (상대경로 x 절대경로써야함) 다운로드 , 수정
	public static final String UPLOAD_PATH="/Users/Inwook/eclipse-workspace/BooksRent/WebContent/book_image";
	/*
	 * 탐색기내에서 존재하는 파일(OriginalFileName)
	 * 파일 이름 변경,변경할 이름을 지정해주는 메소드
	 */
	//파일이름만 변경해주는 메소드
	
	public static String rename(String filename) throws Exception{
		if(filename==null) return null;//이름을 변경 하지 않은경우 null 설정
		// 새이름 부여 -> 현재 시스템시간 + 랜덤함수를 이용해서 작성(중복피하기)
		String newName=Long.toString(System.currentTimeMillis())+(int)(Math.random()*50);
		return rename(filename,newName);
	}
	//확장자를 붙여줘서 완성시켜주는 메소드
	public static String rename(String filename,String newName) throws Exception {
		if(filename==null) return null;//이름을 변경 하지 않은경우 null 설정
		//기존파일명의 확장자 확인
		int index=filename.lastIndexOf(".");
		String extention = "";
		String newFileName=""; // 새 파일명을 부여할 변수
		if(index!=-1) {
			extention = filename.substring(index, filename.length());
			System.out.println("확장자명 =>"+extention);
		}
		//확장자를 제외한 새 파일명을 입력해야 하는데 
		//확장자를 포함해서 입력했다면 확장자를 제외한 파일명으로 재셋팅
		int newindex = newName.lastIndexOf(".");
		if(newindex!=-1) {
			newName=newName.substring(0, newindex);
		}
		newFileName=newName+extention.toLowerCase();
		
		System.out.println("////새로운 파일명 =>"+newFileName);
		
		return newFileName;
	}
	public static void removeFile(String filename) {
		
		//기존의 업로드된 파일이 있다면.
		File file = new File(UPLOAD_PATH,filename);
		
		if(file.exists()) file.delete();
		
	}
	
}
