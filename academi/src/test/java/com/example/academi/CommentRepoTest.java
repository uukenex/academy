package com.example.academi;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;
import com.example.dto.Comments;
import com.example.repo.CommentRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class CommentRepoTest {
static Logger logger = LoggerFactory.getLogger(CommentRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	CommentRepo crepo;
	@Test
	public void SelectTest() {
		Comments result = crepo.selectComment(8);
		logger.trace("객체:{}",result);
		assertThat(result, is(notNullValue()));
	}

	@Test
	public void InsertTest() {
		String commentCategory="공지사항";
		String commentName="이름";
		String commentContent="실험용쥐";
		String userId = "dd";
		int result = crepo.insertComment(commentCategory, commentName, commentContent, userId);
		assertThat(result,is(notNullValue()));
	}
	
	
	
}
