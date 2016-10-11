package com.example.academi.service;

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
import com.example.dto.CommentReply;
import com.example.service.AnswerService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class AnswerServiceTest {
	static Logger logger = LoggerFactory.getLogger(AnswerServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	AnswerService as;

	

	// 답글쓰기 테스트
	@Test
	public void insertTest() {
		as.insertAnswer("답변내용", 10, "dd");
	}
	
	//특정 게시글의 전체 댓글 확인 테스트
	@Test
	public void selectTest() {
		as.selectListByQnaNo(2);
	}
	//답글수정
	@Test
	public void updateTest() {
		as.updateAnswer("내요이이렇게", 20);
	}
	//답글번호로 삭제
	@Test
	public void deleteTest() {
		as.deleteAnswer(20);
	}
	
}
