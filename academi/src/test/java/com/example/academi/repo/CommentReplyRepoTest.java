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
import com.example.dto.CommentReply;
import com.example.repo.CommentReplyRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class CommentReplyRepoTest {
	static Logger logger = LoggerFactory.getLogger(CommentReplyRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	CommentReplyRepo crrepo;

	

	// 댓글쓰기 테스트
	@Test
	public void insertTest() {
		String replyContent = "고양이";
		int replyCommentNo=23;
		String userId="dd";
		int result = crrepo.insertReply(replyContent, replyCommentNo, userId);
		assertThat(result, is(notNullValue()));
	}
	
	//특정 게시글의 전체 댓글 확인 테스트
	@Test
	public void selectTest() {
		List<CommentReply> result=crrepo.selectReplyList(23);
	}
	//댓글번호로 삭제
	@Test
	public void deleteTest() {
		int result = crrepo.deleteReply(4);
	}
	//게시글에 등록된 댓글삭제
	@Test
	public void deleteByCommentNoTest() {
		int result = crrepo.deleteReplyByCommentNo(2);
	}
}
