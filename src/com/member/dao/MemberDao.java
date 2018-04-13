package com.member.dao;

import java.sql.Timestamp;

public interface MemberDao {
		
	public String Login(MemberDTO dto);
	public MemberDTO Member_Info(String p_email);
	public void Member_Register(MemberDTO dto);
	public int GetNum();
	public void Log_Insert(MemberDTO dto);
	public void Log_Update(MemberDTO dto);
	
}
