package com.kth.myboard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kth.myboard.domain.UserVO;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession sqlSession;

	// 1. �α��� SQL ����
	@Override
	public UserVO login(UserVO userVO) {
		// id�� pw�� �˻� ���� �� return �� �� �ִ� ���� 1�� -> selectOne
		return sqlSession.selectOne("user.login", userVO);
	}

	// 2. ���̵� �ߺ� üũ SQL ����
	@Override
	public String idCheck(String id) {

		return sqlSession.selectOne("user.idCheck", id);
	}

	// 3. ȸ�� ���� SQL ����
	@Override
	public int insertUser(UserVO userVO) {

		return sqlSession.insert("user.insertUser", userVO);
	}

}