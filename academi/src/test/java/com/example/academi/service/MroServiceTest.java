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
import org.springframework.transaction.annotation.Transactional;

import com.example.config.ApplicationConfig;
import com.example.dto.CommentReply;
import com.example.service.AnswerService;
import com.example.service.MroService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class MroServiceTest {
	static Logger logger = LoggerFactory.getLogger(MroServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	MroService ms;
	

	@Transactional
	// 답글쓰기 테스트
	@Test
	public void insertTest() {
		ms.updateCnt("인천광역시", "부평구");
	}
	@Test
	public void doHotplace() {
		ms.doHotplace();
	}
}
