package com.example.academi.repo;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;
import com.example.dto.*;
import com.example.repo.UserRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class UserRepoTest {
	static Logger logger = LoggerFactory.getLogger(UserRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	UserRepo urepo;

	// 회원가입 테스트
	@Test
	public void InsertTest() {
		Users user = new Users("dd", "1234", "김", "zz@n.n", "01012345678", "닉네임");
		int result = urepo.insert(user);
		assertThat(result, is(1));
	}

	// 로그인 테스트
	@Test
	public void SelectByIdTest() {
		String userId = "dd";
		Users user = urepo.selectById(userId);
		assertThat(user, is(notNullValue()));
		logger.trace("user정보 By Id : {}", user);
	}

	// 아이디 찾기 테스트
	@Test
	public void SelectByNameAndEmailTest() {
		String userName = "김";
		String userEmail = "zz@n.n";
		List<String> result = urepo.selectByNameAndEmail(userName, userEmail);
		logger.trace("{}", result);
	}

	// 비번찾기 테스트
	@Test
	public void SelectPassTest() {
		String userId = "dd";
		String userName = "김";
		String userEmail = "zz@n.n";
		String result = urepo.selectPass(userId, userName, userEmail);
		logger.trace("{}", result);
	}

	// 정보수정 테스트
	@Test
	public void updateTest() {
		String userId = "dd";
		String userPass = "9999";
		String userPhone = "0105465497";
		String userEmail = "ab@c.d";
		String userNick = "닉쿤";
		int result = urepo.updateUser(userId, userPass, userPhone, userEmail, userNick);
		assertThat(result, is(1));
	}


/*	// 내 후기보기 테스트
	@Test
	public void selectReviewTest() {
		String userId = "dd";
		List<Review> review = urepo.selectReviewById(userId);
		assertThat(review, is(notNullValue()));
		logger.trace("review : {}",review);
		
	}
*/
	// 내 질문보기 테스트
	@Test
	public void selectQnaTest() {
		String userId = "dd";
		List<Qna> review = urepo.selectQnaById(userId);
		assertThat(review, is(notNullValue()));
		logger.trace("review : {}",review);
	}

	// 내 답변보기 테스트
	@Test
	public void selectAnswerTest() {
		String userId = "dd";
		List<Answer> review = urepo.selectAnswerById(userId);
		assertThat(review, is(notNullValue()));
		
	}

	@Test
	public void checkIdAndNick(){
		String userId = "dd";
		String userNick = "닉네임";
		assertThat(urepo.checkId(userId),is(1));
		assertThat(urepo.checkNick(userNick),is(1));
		assertThat(urepo.checkId("ii"),is(0));
		assertThat(urepo.checkNick("wer"),is(0));
	}
	
	@Test
	public void updatePass(){
		int result = urepo.updatePass("dd", "123456");
		assertThat(result, is(notNullValue()));
	}
	

	@Test
	public void searchNickById(){
		String userId = "dd";
		String userNick = "닉네임";
		assertThat(urepo.searchNickById(userId),is(userNick));
		assertThat(urepo.searchNickById(userId),is(userNick));
	}
}
