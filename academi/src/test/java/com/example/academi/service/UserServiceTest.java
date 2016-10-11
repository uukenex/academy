package com.example.academi.service;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;
import com.example.dto.*;
import com.example.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class UserServiceTest {
	static Logger logger = LoggerFactory.getLogger(UserServiceTest.class);

	@Autowired
	UserService uService;

	// 회원가입 서비스 테스트
	@Test
	public void JoinTest() {
		Users user = new Users("zzxx", "pass", "전", "zzxx@z.z", "01099999808", "나님");
		int result = uService.joinUser(user);
		assertThat(result, is(1));
	}

	// 로그인 서비스 테스트
	@Test
	public void LoginTest() {
		String userId = "zzxx";
		Users user = uService.login(userId);
		assertThat(user, is(notNullValue()));
		logger.trace("{}", user);
	}

	// id찾기 서비스 테스트
	@Test
	public void SearchIdTest() {
		String userName = "전";
		String userEmail = "zzxx@z.z";
		List<String> result = uService.SearchId(userName, userEmail);
		assertThat(result, is(notNullValue()));
		logger.trace("{}", result);
	}

	// 비번찾기 서비스 테스트
	@Test
	public void SearchPassTest() {
		String userId = "zzxx";
		String userName = "전";
		String userEmail = "zzxx@z.z";
		String result = uService.SearchPass(userId, userName, userEmail);
		assertThat(result, is(notNullValue()));
		logger.trace("{}", result);
	}

	// 정보 수정 서비스 테스트
	@Test
	public void UpdateUserTest() {
		String userId = "dd";
		String userPass = "9876";
		String userPhone = "01085445454";
		String userEmail = "oo@o.o";
		String userNick = "오씨";
		int result = uService.updateUser(userId, userPass, userPhone, userEmail, userNick);
		assertThat(result, is(1));
	}

	// 마이페이지 내후기보기 서비스 테스트
	@Test
	public void myPageReviewTest() {
		String userId = "dd";
		List<Review> result = uService.myPageReview(userId);
		assertThat(result, is(notNullValue()));
	}

	// 마이페이지 내경로보기 서비스 테스트
	@Test
	public void myPageRouteTest() {
		String userId = "dd";
		List<Route> result = uService.myPageRoute(userId);
		assertThat(result, is(notNullValue()));
	}

	// 마이페이지 내경로보기 서비스 테스트
	@Test
	public void myPageQnaTest() {
		String userId = "dd";
		List<Qna> result = uService.myPageQna(userId);
		assertThat(result, is(notNullValue()));
	}

	// 마이페이지 내경로보기 서비스 테스트
	@Test
	public void myPageAnswerTest() {
		String userId = "dd";
		List<Answer> result = uService.myPageAnswer(userId);
		assertThat(result, is(notNullValue()));
	}
}
