package com.example.academi;

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
import com.example.service.ReviewService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class ReviewServiceTest {
	static Logger logger = LoggerFactory.getLogger(ReviewServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	ReviewService rs;

	int page = 1;

	// 추가
	@Test
	public void insertTest() {
		String reviewTitle = "이게리뷰?";
		String reviewContent = "이게내용?";
		int routeNo = 2;
		String userId = "dd";
		rs.insertReview(reviewTitle, reviewContent, routeNo, userId);
	}

	// 리스트
	@Test
	public void selectListTest() {

		rs.reviewListByPage(page);
	}

	// 단일후기
	@Test
	public void selectTest() {
		rs.selectReview(40);
	}

	// 수정
	@Test
	public void updateTest() {
		rs.updateReview(40, "바뀜?", "내용도?", 2);
	}

	// 삭제 -댓글까지 지워지도록 해야함
	@Test
	public void deleteTest() {
		rs.deleteReview(4);
	}

	// 이름검색
	@Test
	public void searchTest() {

		rs.searchReviewByName("바", page);
	}

	// 내용검색
	@Test
	public void search2Test() {
		rs.searchReviewByContent("내", page);
	}

	// 닉네임검색
	@Test
	public void search3Test() {
		rs.searchReviewByNick("임", page);
	}
	// 루트에따른 검색도 추가해야함

}
