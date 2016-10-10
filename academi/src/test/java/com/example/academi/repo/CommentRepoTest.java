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
import com.example.dto.Comments;
import com.example.repo.CommentRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class CommentRepoTest {
	static Logger logger = LoggerFactory.getLogger(CommentRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	CommentRepo crepo;

	// 글 하나 조회 테스트
	@Test
	public void SelectTest() {
		Comments result = crepo.selectComment(8);
		logger.trace("객체:{}", result);
		assertThat(result, is(notNullValue()));
	}

	// 글 쓰기 테스트
	@Test
	public void InsertTest() {
		String commentCategory = "공지사항";
		String commentName = "이름";
		String commentContent = "실험용쥐";
		String userId = "dd";
		int result = crepo.insertComment(commentCategory, commentName, commentContent, userId);
		assertThat(result, is(notNullValue()));
	}

	// 글 수정 테스트
	@Test
	public void UpdateTest() {
		int commentNo = 15;
		String commentName = "바꾼이름";
		String commentContent = "고양이";
		int result = crepo.updateComment(commentNo, commentName, commentContent);
		assertThat(result, is(notNullValue()));
	}

	// 글 삭제 테스트 -서비스에서는 댓글도 함께지워야함
	@Test
	public void deleteTest() {
		int commentNo = 16;
		int result = crepo.deleteComment(commentNo);
		assertThat(result, is(notNullValue()));
	}

	// 리스트 테스트
	@Test
	public void listTest() {
		int page = 1;
		String commentCategory = "공지사항";
		List<Comments> result = crepo.getCommentByPage(commentCategory, page);
		assertThat(result, is(notNullValue()));
	}

	// 이름검색 테스트
	@Test
	public void searchNameTest() {
		String commentName = "사항";
		int page = 1;
		String commentCategory = "공지사항";
		List<Comments> result = crepo.searchCommentByNameOfPage(commentName, commentCategory, page);
		assertThat(result, is(notNullValue()));
	}

	// 이름검색 테스트
	@Test
	public void searchContentTest() {
		String commentContent = "태풍";
		int page = 1;
		String commentCategory = "공지사항";
		List<Comments> result = crepo.searchCommentByContentOfPage(commentContent, commentCategory, page);
		assertThat(result, is(notNullValue()));
	}

	// 이름검색 테스트
	@Test
	public void searchNickTest() {
		String userNick = "네";
		int page = 1;
		String commentCategory = "공지사항";
		List<Comments> result = crepo.searchCommentByNickOfPage(userNick, commentCategory, page);
		assertThat(result, is(notNullValue()));
	}

	//조회수 증가 테스트
	@Test
	public void updateCountTest(){
		crepo.updateCommentCount(1);
	}
}
