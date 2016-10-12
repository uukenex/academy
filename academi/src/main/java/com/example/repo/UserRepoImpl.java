package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.*;

@Repository
public class UserRepoImpl implements UserRepo {

	private final String NAME_SPACE = "com.example.UserMapper.";
	@Autowired
	SqlSessionTemplate template;

	// insert처리
	@Override
	public int insert(Users user) {
		String statement = NAME_SPACE + "insert";
		return template.update(statement, user);
	}

	// 로그인처리
	@Override
	public Users selectById(String userId) {
		String statement = NAME_SPACE + "selectById";
		return template.selectOne(statement, userId);
	}

	// 아이디 찾기
	@Override
	public List<String> selectByNameAndEmail(String userName, String userEmail) {
		String statement = NAME_SPACE + "selectByNameAndEmail";
		Map<String, String> map = new HashMap<>();
		map.put("userName", userName);
		map.put("userEmail", userEmail);
		return template.selectList(statement, map);
	}

	// 비번찾기
	@Override
	public String selectPass(String userId, String userName, String userEmail) {
		String statement = NAME_SPACE + "selectPass";
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("userName", userName);
		map.put("userEmail", userEmail);
		return template.selectOne(statement, map);
	}

	//정보변경
	@Override
	public int updateUser(String userId,String userPass,String userPhone,String userEmail,String userNick) {
		String statement = NAME_SPACE+"update";
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("userPass", userPass);
		map.put("userPhone", userPhone);
		map.put("userEmail", userEmail);
		map.put("userNick", userNick);
		return template.update(statement,map);
	}

	//마이페이지 Review보기
	@Override
	public List<Review> selectReviewById(String userId) {
		String statement = NAME_SPACE+"selectReviewById";
		return template.selectList(statement,userId);
		
	}

	@Override
	public List<Route> selectRouteById(String userId) {
		String statement = NAME_SPACE+"selectRouteById";
		return template.selectList(statement,userId);
	}

	@Override
	public List<Qna> selectQnaById(String userId) {
		String statement = NAME_SPACE+"selectQnaById";
		return template.selectList(statement,userId);
	}

	@Override
	public List<Answer> selectAnswerById(String userId) {
		String statement = NAME_SPACE+"selectAnswerById";
		return template.selectList(statement,userId);
	}

	@Override
	public int checkId(String userId) {
		String statement = NAME_SPACE+"checkId";
		return template.selectOne(statement,userId);
	}

	@Override
	public int checkNick(String userNick) {
		String statement = NAME_SPACE+"checkNick";
		return template.selectOne(statement,userNick);
	}

}
