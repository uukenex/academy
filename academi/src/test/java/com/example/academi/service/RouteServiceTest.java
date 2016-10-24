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
import com.example.service.RouteService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class RouteServiceTest {
	static Logger logger = LoggerFactory.getLogger(RouteServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	RouteService rs;

	int page = 1;

	// 추가
	@Test
	public void insertTest() {
		rs.insertRoute("이것이루트",
				"이것이 제목", "풀경로", "dd");
	}
	@Test
	public void selectTest() {
		rs.selectRouteByNo(63);
	}
}