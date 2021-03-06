package com.example.service;

import java.util.List;

import com.example.dto.Qna;

public interface QnaService {
	//카운트 올리기
	public int count(int qnaNo);
	// 후기글 보기 
	public Qna selectQna(int qnaNo);

	// 후기글 쓰기
	public int insertQna(String qnaTitle, String qnaQuestion, String userId);

	// 후기글 수정
	public int updateQna(int qnaNo, String qnaTitle, String qnaQuestion);

	// 후기글 삭제 - 댓글을 먼저 삭제해야함
	public int deleteQna(int qnaNo);

	// 리스트 보기
	public List<Qna> qnaListByPage(int page);
	
	// 이름검색
	public List<Qna> searchQnaByName(String qnaTitle, int page);

	// 내용검색 - 답변글에서도 검색하게해야함
	public List<Qna> searchQnaByContent(String qnaQuestion, int page);

	// 닉네임검
	public List<Qna> searchQnaByNick(String userNick, int page);

	public int pageCount();
	
	//가장 최신의 글 번호를 받아옴
	public int currentNo();
	
	public List<Qna> selectQnaTop5();
	
}
