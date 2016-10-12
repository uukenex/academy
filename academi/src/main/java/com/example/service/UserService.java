package com.example.service;

import java.util.List;

import com.example.dto.Answer;
import com.example.dto.Qna;
import com.example.dto.Review;
import com.example.dto.Route;
import com.example.dto.Users;

public interface UserService {
	// insert처리 - 회원가입 서비스 . 결과가 몇개인지 리턴
	public int joinUser(Users user);

	// 로그인처리 - 로그인 서비스,사용자 모든정보 받아옴
	public Users login(String userId);

	// 아이디 찾기 -이름과 Email로 아이디 찾기 서비스
	public List<String> SearchId(String userName, String userEmail);

	// 비번찾기 - id,이름과 Email로 비번 찾기 서비스
	public String SearchPass(String userId, String userName, String userEmail);

	// 정보변경 - 정보 변경 서비스 .비밀번호, 연락처, 이메일, 닉네임을 변경
	public int updateUser(String userId, String userPass, String userPhone, String userEmail, String userNick);

	// 마이페이지 - 내후기보기 서비스
	public List<Review> myPageReview(String userId);

	// 마이페이지 - 내경로보기 서비스
	public List<Route> myPageRoute(String userId);

	// 마이페이지 - 내질문보기 서비스
	public List<Qna> myPageQna(String userId);

	// 마이페이지 - 내답변보기 서비스
	public List<Answer> myPageAnswer(String userId);
	
	// id중복검색
	public int checkId(String userId);
	//닉네임 중복검색
	public int checkNick(String userNick);
}
