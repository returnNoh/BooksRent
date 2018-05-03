package com.member.dao;

import java.sql.Timestamp;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMemberDAO extends SqlSessionDaoSupport implements MemberDao {

	@Override
	public String Login(MemberDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		
		return getSqlSession().selectOne("login", dto);
	}

	@Override
	public MemberDTO Member_Info(String p_email) throws DataAccessException {
		
		return getSqlSession().selectOne("info", p_email);
	}

	@Override
	public void Member_Register(MemberDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().insert("register",dto);
	}

	@Override
	public int GetNum() throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getNum");
	}

	@Override
	public void Log_Insert(MemberDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().insert("log_insert", dto);
	}

	@Override
	public void Log_Update(MemberDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().update("log_update",dto);
	}

	@Override
	public String duplicate_check(String p_email) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("duplicate_check", p_email);
	}

	

}
