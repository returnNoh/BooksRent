package action;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.util.FileUtil;
import com.books.dao.BooksDTO;
import com.books.dao.BooksDao;

@Controller
public class BookRegistController {
	@Autowired
	private BooksDao dao;
	
	@RequestMapping(value="book/register.books",method=RequestMethod.GET)
	public String nooop() {
		//책 등록 페이지로 이동하는 메소드
		
		return "register/book_register";
	}
	
	
	@RequestMapping(value="book/register.books",method=RequestMethod.POST)
	public String zzz(@ModelAttribute("command") BooksDTO command) {
		//책 등록을 해주는 메소드
		
		
		try {
			//max(seq)+1,업로드된 파일명 유무
			String newName="";//업로드한 파일을 저장
			//업로드된 파일이 존재한다면
			if(!command.getUpload().isEmpty()) {
				newName=FileUtil.rename
						(command.getUpload().getOriginalFilename());//탐색기의 원래이름
			   System.out.println("newName="+newName);
			   //command.setFilename(command.getUpload().getOriginalFilename());
			   command.setBook_filename(newName);//DB에 저장전에 새로운 이름부여
			}
			//최대값+1
			int newSeq=dao.getClass()
			System.out.println("newSeq=>"+newSeq);
			command.setSeq(newSeq);//새로운 게시물번호 설정
			//게시판(자료실)에 등록
			boardDao.insert(command);
			//업로드된 위치에 클라이언트의 파일을 복사해서 전송
			if(!command.getUpload().isEmpty()) { //transferTo(업로드파일명)메서드
				File file=new File(FileUtil.UPLOAD_PATH+"/"+newName);
				System.out.println("경로::::"+file.getPath());
				command.getUpload().transferTo(file);
			}
		}catch(IOException e) {
			e.printStackTrace(); //보안상에서는 
		}catch(Exception e) {  //맨 마지막에 Exception처리하도록 
			e.printStackTrace();
		}
		
		
		return "register/book_register";
	}
}
