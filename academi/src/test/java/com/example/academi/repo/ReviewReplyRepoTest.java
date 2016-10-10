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
import com.example.dto.ReviewReply;
import com.example.repo.ReviewReplyRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class ReviewReplyRepoTest {
	static Logger logger = LoggerFactory.getLogger(ReviewReplyRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	ReviewReplyRepo rrrepo;

	// 댓글쓰기 테스트
	@Test
	public void insertTest() {
		String replyContent = "고양이";
		int replyReviewNo = 2;
		String userId = "dd";
		int result = rrrepo.insertReply(replyContent, replyReviewNo, userId);
		assertThat(result, is(notNullValue()));
	}

	// 특정 게시글의 전체 댓글 확인 테스트
	@Test
	public void selectTest() {
		List<ReviewReply> result = rrrepo.selectReplyList(2);
	}

	// 댓글번호로 삭제
	@Test
	public void deleteTest() {
		int result = rrrepo.deleteReply(4);
	}

	// 게시글에 등록된 댓글삭제
	@Test
	public void deleteByCommentNoTest() {
		int result = rrrepo.deleteReplyByReviewNo(2);
	}
}
