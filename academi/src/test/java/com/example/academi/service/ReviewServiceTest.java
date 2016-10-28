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
import com.example.service.ReviewService;
@Transactional
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
		String reviewContent0 = "리뷰내용";
		String reviewContent1=null;
		String reviewContent2=null;
		String reviewContent3=null;
		String reviewContent4=null;
		String reviewContent5=null;
		String reviewContent6=null;
		String reviewContent7=null;
		String reviewContent8=null;
		String reviewContent9=null;
		String reviewImage=null;
		int routeNo = 2;
		String userId = "dd";
		rs.insertReview(reviewTitle, reviewContent0,reviewContent1,
				 reviewContent2,reviewContent3,
				 reviewContent4, reviewContent5,
				 reviewContent6, reviewContent7,
				reviewContent8, reviewContent9,reviewImage, routeNo, userId);
	}

	// 리스트
	@Test
	public void selectListTest() {

		rs.reviewListByPage(page);
	}

	// 단일후기
	@Test
	public void selectTest() {
		rs.selectReview(38);
	}

	// 수정
	@Test
	public void updateTest() {
		String reviewContent0 = "리뷰내용";
		String reviewContent1=null;
		String reviewContent2=null;
		String reviewContent3=null;
		String reviewContent4=null;
		String reviewContent5=null;
		String reviewContent6=null;
		String reviewContent7=null;
		String reviewContent8=null;
		String reviewContent9=null;
		String reviewImage=null;
		rs.updateReview(41, "바뀜?",reviewContent0,reviewContent1,
				 reviewContent2,reviewContent3,
				 reviewContent4, reviewContent5,
				 reviewContent6, reviewContent7,
				reviewContent8, reviewContent9,reviewImage,  2);
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

	//추천수 업데이트 
	@Test
	public void star2Test(){
		rs.updateStar(2);
	}
}
