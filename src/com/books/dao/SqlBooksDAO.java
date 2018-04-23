package com.books.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlBooksDAO extends SqlSessionDaoSupport implements BooksDao {

	@Override
	public List<BooksDTO> bookList(Map<String, Object> map) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("selectBookList",map);
	}
	@Override
	public int bookListCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("selectBookCount", map);
	}
	@Override
	public BooksDTO detail(int num) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("book_detail",num);
	}
	@Override
	public void book_regist(BooksDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().insert("book_regist", dto);
	}
	@Override
	public List<BooksDTO> newBookList(int next) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("newBookList",next);
	}
	@Override
	public List<BooksRentDTO> rentBookList(String p_email) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("rentBookList",p_email);
	}
	@Override
	public List<BooksRentDTO> myBookList(String p_email) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("myBookList",p_email);
	}

	

}
