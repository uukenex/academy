package com.example.service;

import org.springframework.stereotype.Service;

import com.example.dto.Users;


public interface UserService {
	// insert처리 - 회원가입 서비스
	public int joinUser(Users user);
	// 로그인처리 - 로그인 서비스
	// 아이디 찾기 -이름과 Email로 아이디 찾기 서비스
	// 비번찾기 - id,이름과 Email로 비번 찾기 서비스
	// 정보변경 - 정보 변경 서비스 .비밀번호, 연락처, 이메일, 닉네임을 변경
}
