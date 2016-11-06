package com.example.academi.repo;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.util.List;
import java.util.StringTokenizer;

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

	
	// 내 경로보기 테스트
		@Test
		public void selectRouteTest() {
			String userId = "dd";
			List<Route> review = rrepo.selectRouteById("ㅋㅌㅊ");
			assertThat(review, is(notNullValue()));
			logger.trace("review size: {}",review.size());
		}
	// 마이페이지 내경로 받아오기
		@Test
		public void selectRouteTest2() {
			String userId = "dd";
			List<Route> review = rrepo.selectRouteByIdForMypage("ㅋㅌㅊ",1);
			assertThat(review, is(notNullValue()));
			logger.trace("review size: {}",review.size());
		}
	
	// 회원가입 테스트
	@Transactional
	@Test
	public void InsertTest() {
		String routeFull = "♬도자기만들기♬36.81343591863648♬127.14314229009916♬충남 천안시 서북구 성정동 159-21♬http://cfile8.uf.daum.net/original/2464C44F54B610ED1A35E3♬노태산♬36.83690507685371♬127.12664368780422♬충남 천안시 서북구 성성동♬/images/noimg.jpg♬도자기만들기♬36.81343591863648♬127.14314229009916♬충남 천안시 서북구 성정동 159-21♬http://cfile8.uf.daum.net/original/2464C44F54B610ED1A35E3♬노태산♬36.83690507685371♬127.12664368780422♬충남 천안시 서북구 성성동♬/images/noimg.jpg";
		String userId = "dd";
		int result = rrepo.insertRoute(routeFull, userId);
		assertThat(result, is(1));
	}

	@Test
	public void SelectByIdTest() {
		int routeNo = 63;
		Route result = rrepo.selectRouteByNo(routeNo);
		logger.trace("{}", result.getRouteNo());
		logger.trace("{}", result.getRouteName());
		logger.trace("{}", result.getRouteDate());
		logger.trace("{}", result.getRouteContent());
		String str = result.getRouteFull();
		logger.trace("{}", result.getRouteFull());
		logger.trace("{}", result.getUserId());
		logger.trace("{}", result.getUsers().getUserNick());
		assertThat(result, is(notNullValue()));
	}
	@Test
	public void countingTestbyId() {
		rrepo.pageCountbyId("ㅋㅌㅊ");
	}
	@Test
	public void Testss() {
		int routeNo = 63;
		Route result = rrepo.selectRouteByNo(routeNo);
		String str = result.getRouteFull();
		int count = 0;
		for (int c = 0; c<str.length(); c++) {
			if (str.charAt(c) == '♬') {
				count++;
			}
		}
		int i = count/5;
		
		
		String routeName[] = new String[i];
		String routeX[] = new String[i];
		String routeY[] = new String[i];
		String routeAddr[] = new String[i];
		String routeImg[] = new String[i];
		
		i = 0;
		StringTokenizer tokens = new StringTokenizer(str, "♬");
		while (tokens.hasMoreTokens()) {

			routeName[i] = tokens.nextToken();
			routeX[i] = tokens.nextToken();
			routeY[i] = tokens.nextToken();
			routeAddr[i] = tokens.nextToken();
			routeImg[i] = tokens.nextToken();
			i++;
		}

		// 배열에있는 모든정보출력
		for (int cnt = 0; cnt < i; cnt++) {
			logger.trace("routeName["+cnt+"] : {}", routeName[cnt]);
			logger.trace("routeX["+cnt+"] : {}", routeX[cnt]);
			logger.trace("routeY["+cnt+"] : {}", routeY[cnt]);
			logger.trace("routeAddr["+cnt+"] : {}", routeAddr[cnt]);
			logger.trace("routeImg["+cnt+"] : {}", routeImg[cnt]);
		}
		assertThat(result, is(notNullValue()));
	}
	
	@Transactional
	@Test
	public void updateTest() {
		rrepo.updateRoute(22, "수정이름경로", "수정내용이다", "퓰경로인데??");
	}
	
	@Transactional
	@Test
	public void deleteTest() {
		rrepo.deleteRoute(22);
	}
	
	
}
