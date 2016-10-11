package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.Answer;
import com.example.dto.Qna;
import com.example.dto.Review;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.repo.UserRepo;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepo urepo;

	// insert처리 - 회원가입 서비스
	@Override
	public int joinUser(Users user) {
		return urepo.insert(user);
	}

	// 로그인처리 - 로그인 서비스,사용자 모든정보 받아옴
	@Override
	public Users login(String userId) {
		return urepo.selectById(userId);
	}

	// 아이디 찾기 -이름과 Email로 아이디 찾기 서비스
	@Override
	public List<String> SearchId(String userName, String userEmail) {
		return urepo.selectByNameAndEmail(userName, userEmail);
	}

	// 비번찾기 - id,이름과 Email로 비번 찾기 서비스
	@Override
	public String SearchPass(String userId, String userName, String userEmail) {
		return urepo.selectPass(userId, userName, userEmail);
	}

	// 정보변경 - 정보 변경 서비스 .비밀번호, 연락처, 이메일, 닉네임을 변경
	@Override
	public int updateUser(String userId, String userPass, String userPhone, String userEmail, String userNick) {
		return urepo.updateUser(userId, userPass, userPhone, userEmail, userNick);
	}
	// 마이페이지 - 내후기보기 서비스
	@Override
	public List<Review> myPageReview(String userId) {
		return urepo.selectReviewById(userId);
	}

	@Override
	public List<Route> myPageRoute(String userId) {
		return urepo.selectRouteById(userId);
	}

	@Override
	public List<Qna> myPageQna(String userId) {
		return urepo.selectQnaById(userId);
	}

	@Override
	public List<Answer> myPageAnswer(String userId) {
		return urepo.selectAnswerById(userId);
	}

}
