package com.example.repo;

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

}
