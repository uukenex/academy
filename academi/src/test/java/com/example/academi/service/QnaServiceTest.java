package com.example.academi.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;
import com.example.service.QnaService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class QnaServiceTest {
	static Logger logger = LoggerFactory.getLogger(QnaServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	QnaService qs;

	int page = 1;
	String userId="dd";
	// 추가
	@Test
	public void insertTest() {
		qs.insertQna("타이틀", "질문", userId);
	}

	@Test
	public void ListTest(){
		qs.qnaListByPage(page);
	}
	@Test
	public void updateTest(){
		qs.updateQna(6, "싱기", "방기");
	}
	
	@Test 
	public void search1Test(){
		qs.searchQnaByName("싱", page);
	}
	
	@Test 
	public void search2Test(){
		qs.searchQnaByContent("방", page);
	}
	@Test 
	public void search3Test(){
		qs.searchQnaByNick("임", page);
	}
	
	@Test
	public void deleteTest(){
		qs.deleteQna(6);
	}
	@Test
	public void selectTest(){
		qs.selectQna(2);
	}
}
