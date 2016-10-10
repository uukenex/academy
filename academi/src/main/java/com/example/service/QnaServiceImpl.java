package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dto.Qna;
import com.example.repo.QnaRepo;

@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	QnaRepo qrepo;

	// 후기글 보기
	@Transactional
	public Qna selectQna(int qnaNo) {
		qrepo.updateQnaCount(qnaNo);
		return qrepo.selectQna(qnaNo);
	}

	@Override
	public int insertQna(String qnaTitle, String qnaQuestion, String userId) {
		return qrepo.insertQna(qnaTitle, qnaQuestion, userId);
	}

	@Override
	public int updateQna(int qnaNo, String qnaTitle, String qnaQuestion) {
		return qrepo.updateQna(qnaNo, qnaTitle, qnaQuestion);
	}

	@Override
	public int deleteQna(int qnaNo) {
		return qrepo.deleteQna(qnaNo);
	}

	@Override
	public void qnaListByPage(int page) {
		qrepo.qnaListByPage(page);
	}

	@Override
	public void searchQnaByName(String qnaTitle, int page) {
		qrepo.searchQnaByName(qnaTitle, page);

	}

	@Override
	public void searchQnaByContent(String qnaQuestion, int page) {
		qrepo.searchQnaByContent(qnaQuestion, page);

	}

	@Override
	public void searchQnaByNick(String userNick, int page) {
		qrepo.searchQnaByNick(userNick, page);

	}

}
