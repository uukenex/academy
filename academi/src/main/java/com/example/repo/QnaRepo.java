package com.example.repo;

import java.util.List;

import com.example.dto.Qna;

public interface QnaRepo {
	// 후기글 보기 -보기와 동시에 조회수를 늘려야함
	public Qna selectQna(int qnaNo);

	// 후기글 쓰기
	public int insertQna(String qnaTitle, String qnaQuestion, String userId);

	// 후기글 수정
	public int updateQna(int qnaNo, String qnaTitle, String qnaQuestion);

	// 후기글 삭제
	public int deleteQna(int qnaNo);

	// 페이지 로딩
	public List<Qna> qnaListByPage(int page);

	// 이름검색
	public List<Qna> searchQnaByName(String qnaTitle, int page);

	// 내용검색 답변글에서도 찾아야함 -서비스에서처리
	public List<Qna> searchQnaByContent(String qnaQuestion, int page);

	// 닉네임검색
	public List<Qna> searchQnaByNick(String userNick, int page);

	// 조회수 늘리기
	public int updateQnaCount(int qnaNo);
	public int pageCount();
}
