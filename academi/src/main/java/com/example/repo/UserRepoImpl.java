package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Users;

@Repository
public class UserRepoImpl implements UserRepo{

	private final String NAME_SPACE = "com.example.UserMapper.";
	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public int insert(Users user) {
		String statement = NAME_SPACE+"insert";
		return template.update(statement,user);
	}

	@Override
	public Users selectById(String userId) {
		String statement = NAME_SPACE+"selectById";
		return template.selectOne(statement,userId);
	}

	@Override
	public List<String> selectByNameAndEmail(String userName,String userEmail) {
		String statement =NAME_SPACE+"selectByNameAndEmail";
		Map<String,String> map = new HashMap<>();
		map.put("userName", userName);
		map.put("userEmail", userEmail);
		return template.selectList(statement,map);
	}

	@Override
	public List<String> selectPass(String userId, String userName, String userEmail) {
		String statement =NAME_SPACE+"selectPass";
		Map<String,String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("userName", userName);
		map.put("userEmail", userEmail);
		return template.selectList(statement,map);
	}

}
