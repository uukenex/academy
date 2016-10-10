package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Answer;

@Repository
public class AnswerRepoImpl implements AnswerRepo {
	private final String NAME_SPACE = "com.example.AnswerMapper.";
	@Autowired
	SqlSessionTemplate template;

	@Override
	public List<Answer> selectListByQnaNo(int qnaNo) {
		String statement = NAME_SPACE + "select";
		return template.selectList(statement,qnaNo);
	}

	@Override
	public int insertAnswer(String answerContent, int qnaNo, String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String,Object> map = new HashMap<>();
		map.put("answerContent", answerContent);
		map.put("qnaNo", qnaNo);
		map.put("userId", userId);
		return template.insert(statement,map);
	}

	@Override
	public int updateAnswer(String answerContent,int answerNo) {
		String statement = NAME_SPACE + "update";
		Map<String,Object> map = new HashMap<>();
		map.put("answerContent", answerContent);
		map.put("answerNo", answerNo);
		return template.update(statement,map);
	}

	@Override
	public int deleteAnswer(int qnaNo) {
		String statement = NAME_SPACE + "delete";
		return template.delete(statement,qnaNo);
	}

	@Override
	public int deleteAnswerByQnaNo(int qnaNo) {
		String statement = NAME_SPACE + "deleteByQnaNo";
		return template.delete(statement,qnaNo);
	}

}
