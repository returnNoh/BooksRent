package com.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMemberDAO extends SqlSessionDaoSupport implements MemberDao {

	@Override
	public int Login(MemberDTO dto) throws DataAccessException {
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
	public int getNum() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getNum");
	}

	

}
