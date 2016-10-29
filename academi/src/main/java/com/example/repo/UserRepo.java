package com.example.repo;

import java.util.List;

import com.example.dto.*;

public interface UserRepo {
	// insert처리
	public int insert(Users user);

	// 로그인처리
	public Users selectById(String userId);

	// 아이디 찾기
	public List<String> selectByNameAndEmail(String userName, String userEmail);

	// 비번찾기
	public String selectPass(String userId, String userName, String userEmail);

	// 정보변경
	public int updateUser(String userId, String userPass, String userPhone, String userEmail, String userNick);

	// 후기 보기 by id
	public List<Review> selectReviewById(String userId);

	
	// 질문 보기
	public List<Qna> selectQnaById(String userId);

	// 답변 보기
	public List<Answer> selectAnswerById(String userId);

	// id 중복확인
	public int checkId(String userId);

	// 닉네임 중복확인
	public int checkNick(String userNick);

	// id로 닉네임을 찾음
	public String searchNickById(String userId);
}
