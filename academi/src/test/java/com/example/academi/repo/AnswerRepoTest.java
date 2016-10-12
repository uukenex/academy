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
import com.example.dto.CommentReply;
import com.example.repo.AnswerRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class AnswerRepoTest {
	static Logger logger = LoggerFactory.getLogger(AnswerRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	AnswerRepo arepo;

	

	// 답글쓰기 테스트
	@Test
	public void insertTest() {
		arepo.insertAnswer("답변", 12, "dd");
	}
	@Test
	public void selectTest(){
		arepo.selectListByQnaNo(2);
	}
	
	@Test
	public void updateTest(){
		arepo.updateAnswer("바뀜",4);
	}
	
	@Test
	public void Test(){
		arepo.deleteAnswer(4);
	}
	@Test
	public void Test2(){
		arepo.deleteAnswerByQnaNo(2);
	}
}
