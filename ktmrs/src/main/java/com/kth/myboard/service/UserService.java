package com.kth.myboard.service;

import javax.servlet.http.HttpServletRequest;

import com.kth.myboard.domain.UserDTO;
import com.kth.myboard.domain.UserVO;

public interface UserService {

	// 1. �α��� ó�� �޼ҵ� ����
	public UserVO login(UserVO userVO);

	// 2. ���̵� �ߺ�üũ ó��
	// ���̵� �ߺ� -> false, �ߺ��ƴ� true�� ���� ����
	public boolean idCheck(String id);

	// 3. ȸ�� ����
	public void insertUser(UserDTO userDTO, HttpServletRequest request);

}
