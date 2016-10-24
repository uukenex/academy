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
import com.example.dto.Answer;
import com.example.dto.Qna;
import com.example.dto.Review;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.repo.RouteRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class RouteRepoTest {
	static Logger logger = LoggerFactory.getLogger(RouteRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	RouteRepo rrepo;

	// 회원가입 테스트
	@Test
	public void InsertTest() {
		String routeName="나만의여행";
		String routeContent="여행1일차 ";
		String routeFull="♬도자기만들기♬36.81343591863648♬127.14314229009916♬충남 천안시 서북구 성정동 159-21♬http://cfile8.uf.daum.net/original/2464C44F54B610ED1A35E3♬노태산♬36.83690507685371♬127.12664368780422♬충남 천안시 서북구 성성동♬/images/noimg.jpg";
		String userId = "dd";
		int result = rrepo.insertRoute(routeName, routeContent, routeFull, userId);
		assertThat(result, is(1));
	}

	// 로그인 테스트
	@Test
	public void SelectByIdTest() {
		int routeNo=61;
		Route result = rrepo.selectRouteByNo(routeNo);
		result.getRouteNo();
		assertThat(result, is(notNullValue()));
	}
}
