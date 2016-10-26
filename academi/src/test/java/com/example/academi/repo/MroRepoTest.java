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
import org.springframework.transaction.annotation.Transactional;

import com.example.config.ApplicationConfig;
import com.example.dto.CommentReply;
import com.example.repo.AnswerRepo;
import com.example.repo.MroRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class MroRepoTest {
	static Logger logger = LoggerFactory.getLogger(MroRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	MroRepo mrepo;
	

	// 답글쓰기 테스트
	@Transactional
	@Test
	public void insertTest() {
		String city="인천광역시";
		String siGu="부평구";
		String dong="삼산동";
		mrepo.countUpdateDong(city, siGu, dong);
		mrepo.countUpdateSiGu(city, siGu);
		mrepo.countUpdateCity(city);
		}
}