package xxx;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import xxx.*;

public class userDAO {


	private DBConnectionMgr pool;
	
	public userDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	public boolean regist_user(userDTO dto) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean check = false;
		String sql = "insert into user values(?,?,?,?)";
		
		try {
			
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getNickname());
			pstmt.setString(4, dto.getName());
			
			if(pstmt.executeUpdate()>0) {
				check=true;
			}
			
			
		}catch(Exception e) {
			System.out.println("getArticleCount 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return check;
	}
	
	public boolean regist_user(String id,String passwd) {
		return false;
	}
	
	public boolean regist_book(String name,int num) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		boolean check = false;
		String sql = "insert into book values(?,?)";
		
		try {
			
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, num);
			
			
			if(pstmt.executeUpdate()>0) {
				check=true;
			}
			
			
		}catch(Exception e) {
			System.out.println("getArticleCount 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return check;
		
		
		
	}

	
	
}
