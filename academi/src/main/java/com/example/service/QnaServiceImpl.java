package com.example.service;

import java.util.List;

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
	public List<Qna> qnaListByPage(int page) {
		return qrepo.qnaListByPage(page);
	}

	@Override
	public List<Qna> searchQnaByName(String qnaTitle, int page) {
		return qrepo.searchQnaByName(qnaTitle, page);

	}

	@Override
	public List<Qna> searchQnaByContent(String qnaQuestion, int page) {
		return qrepo.searchQnaByContent(qnaQuestion, page);

	}

	@Override
	public List<Qna> searchQnaByNick(String userNick, int page) {
		return qrepo.searchQnaByNick(userNick, page);

	}

}
