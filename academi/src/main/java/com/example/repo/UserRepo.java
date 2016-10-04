package com.example.repo;

import java.util.List;
import java.util.Map;

import com.example.dto.Users;

public interface UserRepo {
	// insert처리
	public int insert(Users user);

	// 로그인처리
	public Users selectById(String userId);

	// 아이디 찾기
	public List<String> selectByNameAndEmail(String userName, String userEmail);

	// 비번찾기
	public List<String> selectPass(String userId, String userName, String userEmail);

	// 정보변경
	public int updateUser(String userId, String userPass, String userPhone, String userEmail, String userNick);
}
