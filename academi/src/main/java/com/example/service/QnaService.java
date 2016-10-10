package com.example.service;

import com.example.dto.Qna;

public interface QnaService {
	// 후기글 보기 -카운트먼저 올리고
	public Qna selectQna(int qnaNo);

	// 후기글 쓰기
	public int insertQna(String qnaTitle, String qnaQuestion, String userId);

	// 후기글 수정
	public int updateQna(int qnaNo, String qnaTitle, String qnaQuestion);

	// 후기글 삭제 - 댓글을 먼저 삭제해야함
	public int deleteQna(int qnaNo);

	// 리스트 보기
	void qnaListByPage(int page);
	
	// 이름검색
	public void searchQnaByName(String qnaTitle, int page);

	// 내용검색 - 답변글에서도 검색하게해야함
	public void searchQnaByContent(String qnaQuestion, int page);

	// 닉네임검
	public void searchQnaByNick(String userNick, int page);

	
	
}
