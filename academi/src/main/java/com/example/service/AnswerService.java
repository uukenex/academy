package com.example.service;

import java.util.List;

import com.example.dto.Answer;

public interface AnswerService {
	/**
	 *특정 글 번호에대한 모든 답변글 불러오기
	 */ 
	public List<Answer> selectListByQnaNo(int qnaNo);

	// 답변 추가-답변내용/ 외래키 질문글 번호/외래키 id 필요
	public int insertAnswer(String answerContent, int qnaNo, String userId);

	// 답변 수정
	public int updateAnswer(String answerContent, int answerNo);

	// 답변 삭제
	public int deleteAnswer(int qnaNo);
}
