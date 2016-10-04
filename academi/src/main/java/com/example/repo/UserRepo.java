package com.example.repo;

import java.util.List;
import java.util.Map;

import com.example.dto.Users;

public interface UserRepo {

	public int insert(Users user);
	public Users selectById(String userId);
	public List<String> selectByNameAndEmail(String userName,String userEmail);
}
