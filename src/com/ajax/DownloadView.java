package com.ajax;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

//일반적인 뷰X -> 따로 다운로드만 처리하는 View(Spring MVC구성요소 중 하나)
public class DownloadView  extends AbstractView{
	
	public DownloadView() {
		this.setContentType("application/download"); // 뷰의 컨텐츠타입을 바꿈
	}
	//뷰객체에 전달된 키에 해당하는 값을 가져와서 처리해주는 전용 메소드
	//1.Map객체(전달하는 키에 해당하는 값을 받기위한) 2. request객체 3.response
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//다운로드 받는 파일의 위치 , 크기를 설정 -> response객체가 담당
		//return new ModelAndView("downloadView","downloadFile",downloadFile) 이 값이
		//매개변수 Map model에 들어있다.
		File file = (File)model.get("downloadFile");
		//다운받을 파일의 타입 , 크기 설정
		response.setContentType(this.getContentType());
		response.setContentLength((int)file.length());
//		브라우저별로 한글처리 -> 브라우저 이름을 알수있다. -> user-Agent
		String userAgent = request.getHeader("User-Agent");
//		형식)request.getHeader("헤더정보필드명")
		System.out.println("userAgent =>"+userAgent);
		//MSIE = IE(인터넷익스플로어)
		boolean ie =userAgent.indexOf("MSIE")>-1;
		String fileName = null; // 다운로드 받을 파일의 한글처리
		
		//고-전적인 한글처리
		if(ie) {//IE라면 한글처리하는 문구
			fileName = URLEncoder.encode(file.getName(),"UTF-8");
		}else {
			fileName = new String(file.getName().getBytes("UTF-8"),"iso-8859-1");
		}
		//대화상자 -> 원하는 위치를 다운로드 대화상자에서 지정
		//다운로드 받는 위치 -> Content-Disposition(키명),
		//attachment;filename=다운로드 받을 파일명 exe,bat  -> 이진파일
		//Content-Transfer-Encoding속성 -> binary
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\";"); // 이름설정
//		response.setHeader("Content-Transfer", "binary");// 실행파일도 가능하게 하는것.
		//전송을 받으려면
		OutputStream out = response.getOutputStream();
		FileInputStream fis = null;// 서버
		try {
			fis= new FileInputStream(file);
			//서버->내컴퓨터로 내려받기 -> FileCopyUtils
			FileCopyUtils.copy(fis,out); //다운로드받는 쪽 객체 , 상대방 출력객체(서버)
		}catch(IOException e) {
			e.printStackTrace();
		}finally {
			if(fis!=null) {
				try {fis.close();}catch(IOException e) {}
			}
		}
		//서버에서 무조건 버퍼에 저장하지 말고 그냥 출력 - 뭉치로 주지말고 그냥 바로 다운
		out.flush();
		
	}

}
