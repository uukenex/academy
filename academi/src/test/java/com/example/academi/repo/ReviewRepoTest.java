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
import com.example.dto.Review;
import com.example.repo.ReviewRepo;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class ReviewRepoTest {
	static Logger logger = LoggerFactory.getLogger(ReviewRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	ReviewRepo rrepo;

	int page = 1;

	// 후기글 하나 조회 테스트
	@Test
	public void SelectTest() {
		Review result = rrepo.selectReview(2);
		logger.trace("객체:{}", result);
		assertThat(result, is(notNullValue()));
		logger.trace("원하는 정보 : {}",rrepo.selectReview(2).getUsers().getUserNick());
	}

	// 후기글 쓰기 테스트
	@Test
	public void InsertTest() {
		String reviewTitle = "리뷰제목";
		String reviewContent = "리뷰내용";
		String reviewContent1=null;
		String reviewContent2=null;
		String reviewContent3=null;
		String reviewContent4=null;
		String reviewContent5=null;
		String reviewContent6=null;
		String reviewContent7=null;
		String reviewContent8=null;
		String reviewContent9=null;
		int routeNo = 2;
		String userId = "ㅋㅌㅊ";
		rrepo.insertReview(reviewTitle, reviewContent,
				 reviewContent1,
				 reviewContent2,reviewContent3,
				 reviewContent4, reviewContent5,
				 reviewContent6, reviewContent7,
				reviewContent8, reviewContent9,
				routeNo, userId);
	}

	// 후기글 수정 테스트
	@Test
	public void UpdateTest() {
		String reviewTitle = "리뷰제목";
		String reviewContent = "리뷰내용";
		String reviewContent1=null;
		String reviewContent2=null;
		String reviewContent3=null;
		String reviewContent4=null;
		String reviewContent5=null;
		String reviewContent6=null;
		String reviewContent7=null;
		String reviewContent8=null;
		String reviewContent9=null;
		int routeNo = 2;
		int reviewNo = 10;
		rrepo.updateReview(reviewNo, reviewTitle,
				reviewContent,
				 reviewContent1,
				 reviewContent2,reviewContent3,
				 reviewContent4, reviewContent5,
				 reviewContent6, reviewContent7,
				reviewContent8, reviewContent9,
				routeNo);
	}

	// 후기글 삭제 테스트 -서비스에서는 댓글도 함께지워야함
	@Test
	public void deleteTest() {
		rrepo.deleteReview(4);
	}

	// 추천 후기 테스트
	@Test
	public void starTest() {
		rrepo.starReview();
	}

	// 후기 리스트 테스트
	@Test
	public void listTest() {
		rrepo.reviewListByPage(page);
	}

	// 이름검색 테스트
	@Test
	public void searchNameTest() {
		String reviewTitle = "리뷰";
		rrepo.searchReviewByName(reviewTitle, page);
	}

	// 내용검색 테스트
	@Test
	public void searchContentTest() {
		String reviewContent="리";
		rrepo.searchReviewByContent(reviewContent, page);
	}

	// 닉네임검색 테스트
	@Test
	public void searchNickTest() {
		rrepo.searchReviewByNick("네", page);
	}

	//조회수 늘리기 테스트
	@Test 
	public void countTest(){
		rrepo.updateReviewCount(2);
	}
	
	//추천수 업데이트 테스트
	@Test
	public void starTest2(){
		rrepo.updateStar(2);
	}
	@Test
	public void countingTest(){
		rrepo.pageCount();
	}
	
	// 내 후기보기 테스트
	@Test
	public void selectReviewTest() {
		String userId = "dd";
		List<Review> review = rrepo.selectReviewById(userId);
		assertThat(review, is(notNullValue()));
		logger.trace("review : {}",review);
		
	}
}
