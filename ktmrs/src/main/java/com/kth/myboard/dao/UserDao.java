package com.kth.myboard.dao;

import com.kth.myboard.domain.UserVO;

// SpringUser ���̺� ���� �����ͺ��̽� �۾� �޼ҵ� ������ �������̽�

public interface UserDao {

	// 1. �α��� ó�� �۾�
	// -> ����ڰ� �Է��� id�� pw�� �Ű������� �޾Ƽ� ��ġ�� ��� �����͸� ����
	public UserVO login(UserVO userVO);

	// 2. ���̵� �ߺ� üũ
	public String idCheck(String id);

	// 3. ȸ�� ����
	// UserVO - User ���̺�� ����
	// UserDTO - ȸ�� ���� form�� ����
	public int insertUser(UserVO userVO);

}
