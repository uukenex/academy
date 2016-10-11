package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.Answer;
import com.example.repo.AnswerRepo;
@Service
public class AnswerServiceImpl implements AnswerService {

	@Autowired
	AnswerRepo arepo;
	
	// 특정 글 번호에대한 모든 답변글 불러오기
	public List<Answer> selectListByQnaNo(int qnaNo){
			return arepo.selectListByQnaNo(qnaNo);
		}

	// 답변 추가-답변내용/ 외래키 질문글 번호/외래키 id 필요
	public int insertAnswer(String answerContent, int qnaNo, String userId)
	{
		return arepo.insertAnswer(answerContent, qnaNo, userId);
	}

	// 답변 수정
	public int updateAnswer(String answerContent, int answerNo){
		return arepo.updateAnswer(answerContent, answerNo);
	}

	// 답변 삭제
	public int deleteAnswer(int qnaNo){
		return arepo.deleteAnswer(qnaNo);
	}
}
