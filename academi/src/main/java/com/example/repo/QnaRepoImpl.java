package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Qna;

@Repository
public class QnaRepoImpl implements QnaRepo{
	private final String NAME_SPACE = "com.example.QnaMapper.";
	@Autowired
	SqlSessionTemplate template;
	@Override
	public Qna selectQna(int qnaNo) {
		String statement = NAME_SPACE + "select";
		return template.selectOne(statement, qnaNo);
	}
	@Override
	public int insertQna(String qnaTitle, String qnaQuestion, String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String,Object> map = new HashMap<>();
		map.put("qnaTitle", qnaTitle);
		map.put("qnaQuestion",qnaQuestion);
		map.put("userId", userId);
		return template.insert(statement,map);
	}
	@Override
	public int updateQna(int qnaNo, String qnaTitle, String qnaQuestion) {
		String statement = NAME_SPACE + "update";
		Map<String,Object> map = new HashMap<>();
		map.put("qnaNo", qnaNo);
		map.put("qnaTitle", qnaTitle);
		map.put("qnaQuestion",qnaQuestion);
		return template.insert(statement,map);
	}
	@Override
	public int deleteQna(int qnaNo) {
		String statement = NAME_SPACE + "delete";
		return template.insert(statement,qnaNo);
	}
	@Override
	public List<Qna> qnaListByPage(int page) {
		String statement = NAME_SPACE + "selectList";
		return template.selectList(statement,page);
	}
	@Override
	public List<Qna> searchQnaByName(String qnaTitle, int page) {
		String statement = NAME_SPACE + "searchListByName";
		Map <String,Object> map = new HashMap<>();
		map.put("qnaTitle", "%"+qnaTitle+"%");
		map.put("page", page);
		return template.selectList(statement,map);
	}
	@Override
	public List<Qna> searchQnaByContent(String qnaQuestion, int page) {
		String statement = NAME_SPACE + "searchListByContent";
		Map <String,Object> map = new HashMap<>();
		map.put("qnaQuestion", "%"+qnaQuestion+"%");
		map.put("page", page);
		return template.selectList(statement,map);
	}
	@Override
	public List<Qna> searchQnaByNick(String userNick, int page) {
		String statement = NAME_SPACE + "searchListByNick";
		Map <String,Object> map = new HashMap<>();
		map.put("userNick", "%"+userNick+"%");
		map.put("page", page);
		return template.selectList(statement,map);
	}
	@Override
	public int updateQnaCount(int qnaNo) {
		String statement = NAME_SPACE + "countUpdate";
		return template.update(statement,qnaNo);
	}
	@Override
	public int pageCount() {
		String statement = NAME_SPACE + "pageCount";
		return template.update(statement);
	}

	

}
