package com.example.academi.service;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;
import com.example.dto.Review;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.service.CommentService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class CommentServiceTest {
	static Logger logger = LoggerFactory.getLogger(CommentServiceTest.class);

	@Autowired
	CommentService cService;

	// 게시글 보기테스트
	@Test
	public void SelectTest() {
		cService.selectComment(14);
	}

	// 게시글 쓰기(공지사항)
	@Test
	public void writeNoticeTest() {
		String commentName = "공지사하입니다";
		String commentContent = "태풍이 무사히지나갔스빈다";
		String userId = "dd";
		cService.writeNoticeComment(commentName, commentContent, userId);
	}

	// 게시글 쓰기(자유게시판)
	@Test
	public void writeFreeTest() {
		String commentName = "태풍왓데";
		String commentContent = "태풍이 무사히지나갔스빈다";
		String userId = "dd";
		cService.writeFreeComment(commentName, commentContent, userId);
	}

	// 게시글 수정(작성자만 가능)
	@Test
	public void updateTest() {
		int commentNo = 2;
		String commentName = "태풍왓데(수정)";
		String commentContent = "태풍이 무사히지나갔스빈다(정말)?";
		cService.updateComment(commentNo, commentName, commentContent);
	}

	// 게시글 삭제 --댓글까지 지워야함 //트랜잭션 테스트완료
	@Test
	public void deleteTest() {
		int commentNo = 3;
		cService.deleteComment(commentNo);
	}

	// 페이지당 리스트를 보여줌(공지사항)
	@Test
	public void pagingTest() {
		int page = 1;
		cService.noticeListByPage(page);
	}

	// 페이지당 리스트를 보여줌(자유게시판)
	@Test
	public void pagingTest2() {
		int page = 1;
		cService.freeListByPage(page);
	}

	// 이름검색 리스트를 페이지별로 보여줌(공지사항)
	@Test
	public void pagingTest3() {
		int page = 1;
		String commentName = "공";
		cService.noticeSearchListByPage(commentName, page);
	}

	// 이름검색 리스트를 페이지별로 보여줌(자유게시판)
	@Test
	public void pagingTest4() {
		int page = 1;
		String commentName = "태";
		cService.freeSearchListByPage(commentName, page);
	}

	// 내용검색 리스트를 페이지별로 보여줌(공지사항)
	@Test
	public void pagingTest5() {
		int page = 1;
		String commentContent = "태풍";
		cService.noticeSearchContentListByPage(commentContent, page);
	}

	// 내용검색 리스트를 페이지별로 보여줌(자유게시판)
	@Test
	public void pagingTest6() {
		int page = 1;
		String commentContent = "태풍";
		cService.freeSearchContentListByPage(commentContent, page);
	}

	// 닉네임검색 리스트를 페이지별로 보여줌(공지사항)
	@Test
	public void pagingTest7() {
		int page = 1;
		String userNick = "닉";
		cService.noticeSearchNickListByPage(userNick, page);
	}

	// 닉네임검색 리스트를 페이지별로 보여줌(자유게시판)
	@Test
	public void pagingTest8() {
		int page = 1;
		String userNick = "닉";
		cService.freeSearchNickListByPage(userNick, page);
	}
}