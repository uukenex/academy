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
import com.example.dto.ReviewReply;
import com.example.service.ReviewReplyService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class ReviewReplyServiceTest {
	static Logger logger = LoggerFactory.getLogger(ReviewReplyServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	ReviewReplyService rrs;

	

	// 댓글쓰기 테스트
	@Test
	public void insertTest() {
		String replyContent = "고양이";
		int replyReviewNo=4;
		String userId="dd";
		int result = rrs.insertReply(replyContent, replyReviewNo, userId);
		assertThat(result, is(notNullValue()));
	}
	
	//특정 게시글의 전체 댓글 확인 테스트
	@Test
	public void selectTest() {
		List<ReviewReply> result=rrs.selectReplyList(4);
	}
	//댓글번호로 삭제
	@Test
	public void deleteTest() {
		int result = rrs.deleteReply(14);
	}
	
}
