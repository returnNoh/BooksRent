package com.member.dao;

public interface MemberDao {
		
	public int Login(MemberDTO dto);
	public MemberDTO Member_Info(String p_email);
	public void Member_Register(MemberDTO dto);
	public int getNum();
	
}
