package com.kth.myboard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kth.myboard.domain.UserVO;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession sqlSession;

	// 1. 로그인 SQL 연동
	@Override
	public UserVO login(UserVO userVO) {
		// id와 pw로 검색 했을 때 return 될 수 있는 값은 1개 -> selectOne
		return sqlSession.selectOne("user.login", userVO);
	}

	// 2. 아이디 중복 체크 SQL 연동
	@Override
	public String idCheck(String id) {

		return sqlSession.selectOne("user.idCheck", id);
	}

	// 3. 회원 가입 SQL 연동
	@Override
	public int insertUser(UserVO userVO) {

		return sqlSession.insert("user.insertUser", userVO);
	}

}
