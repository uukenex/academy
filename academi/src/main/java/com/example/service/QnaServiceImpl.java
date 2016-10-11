package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dto.Qna;
import com.example.repo.AnswerRepo;
import com.example.repo.QnaRepo;

@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	QnaRepo qrepo;
@Autowired
AnswerRepo arepo;
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
	@Transactional
	public int deleteQna(int qnaNo) {
		int result = arepo.deleteAnswerByQnaNo(qnaNo);
		result =qrepo.deleteQna(qnaNo); 
		return result;
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
