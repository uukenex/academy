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
import com.example.dto.Comments;
import com.example.dto.Qna;
import com.example.repo.QnaRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class QnaRepoTest {
	static Logger logger = LoggerFactory.getLogger(QnaRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	QnaRepo qrepo;

	// 글 하나 조회 테스트
	@Test
	public void SelectTest() {
		Qna result = qrepo.selectQna(2);
		logger.trace("객체:{}", result);
		assertThat(result, is(notNullValue()));
	}

	// 글 쓰기 테스트
	@Transactional
	@Test
	public void InsertTest() {
		String qnaTitle = "이름";
		String qnaQuestion ="태풍오나요";
		
		String userId = "dd";
		int result = qrepo.insertQna(qnaTitle,qnaQuestion,userId);
		
		int selectNo = qrepo.selectNo();
		assertThat(result, is(notNullValue()));
		logger.trace("그 결과는!!! : {}",selectNo);
	}

	// 글 수정 테스트
	@Test
	public void UpdateTest() {
		int commentNo = 2;
		String commentName = "바꾼이름";
		String commentContent = "고양이";
		int result = qrepo.updateQna(commentNo, commentName, commentContent);
		assertThat(result, is(notNullValue()));
	}

	// 글 삭제 테스트 -서비스에서는 댓글도 함께지워야함
	@Test
	public void deleteTest() {
		int commentNo = 4;
		int result = qrepo.deleteQna(commentNo);
		assertThat(result, is(notNullValue()));
	}

	// 리스트 테스트
	@Test
	public void listTest() {
		int page = 1;
		List<Qna> result = qrepo.qnaListByPage(page);
		assertThat(result, is(notNullValue()));
	}

	// 이름검색 테스트
	@Test
	public void searchNameTest() {
		int page = 1;
		List<Qna> result = qrepo.searchQnaByName("이", page);
		assertThat(result, is(notNullValue()));
	}

	// 내용검색 테스트
	@Test
	public void searchContentTest() {
		String commentContent = "고";
		int page = 1;
		List<Qna> result = qrepo.searchQnaByContent(commentContent,  page);
		assertThat(result, is(notNullValue()));
	}

	// 닉네임검색 테스트
	@Test
	public void searchNickTest() {
		String userNick = "네";
		int page = 1;
		String commentCategory = "공지사항";
		List<Qna> result = qrepo.searchQnaByNick(userNick, page);
		assertThat(result, is(notNullValue()));
	}

	//조회수 증가 테스트
	@Test
	public void updateCountTest(){
		qrepo.updateQnaCount(2);
	}
	
	@Test
	public void top5Test1(){
		qrepo.selectQnATop5();
	}
}
