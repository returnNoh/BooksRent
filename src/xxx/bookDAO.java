package xxx;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class bookDAO {

private DBConnectionMgr pool;
	
	public bookDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	
	
public boolean regist_book(String name,int num) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		boolean check = false;
		String sql = "insert into book values(?,?,null)";
		
		try {
			
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, num);
			
			
			if(pstmt.executeUpdate()>0) {
				check=true;
			}
			
			
		}catch(Exception e) {
			System.out.println("regist_book 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return check;
}
	
	public ArrayList<bookDTO> search_book(String select,String search,int start,int pagenum) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<bookDTO> list = new ArrayList<bookDTO>();
		bookDTO dto = null;
		
		String sql = "select * from book where "+select+" like '%"+search+"%' order by booknum asc limit "+(start-1)+","+pagenum;
		
		try {
			
			con=pool.getConnection();
			
			pstmt = con.prepareStatement(sql);
			System.out.println(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				do{
				dto=new bookDTO();
				dto.setName(rs.getString(1));
				dto.setBooknum(rs.getInt(2));
				dto.setId(rs.getString(3));
				list.add(dto);
				}while(rs.next());
				
			}else {
				System.out.println("검색값이 존재하지 않습니다.");
			}
				
					
			System.out.println(list.size());
			
			
		}catch(Exception e) {
			System.out.println("search_book 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return list;
	}
	
	

	
	
	
	public int rent_book(String id,int booknum) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int check = 0;
		String sql = "select id from book where booknum="+booknum;
		
		try {
			
			con = pool.getConnection();
			
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals("admin")) {
					sql="update book set id=? where booknum=?";
						
							pstmt = con.prepareStatement(sql);
								pstmt.setString(1, id);
									pstmt.setInt(2, booknum);
			
			
										if(pstmt.executeUpdate()>0) {
												check=1;
											}
				}//대여조건끝
				else { // 반납시작
					sql="update book set id=? where booknum=?";
					
					pstmt = con.prepareStatement(sql);
						pstmt.setString(1, "admin");
							pstmt.setInt(2, booknum);
	
	
								if(pstmt.executeUpdate()>0) {
										check=2;
									}
					
				}//반납조건끝
			
			}else {//책의 번호가 없다면
				check=9;
			}
		}catch(Exception e) {
			System.out.println("regist_book 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return check;
		
	}
	
	public int count() {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		String sql = "select count(*) from book";
		
		try {
			
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
		
			rs=pstmt.executeQuery();
			rs.next();
			
			count = rs.getInt(1);
			
			
		}catch(Exception e) {
			System.out.println("regist_book 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return count;
		
	}
	
	
}

