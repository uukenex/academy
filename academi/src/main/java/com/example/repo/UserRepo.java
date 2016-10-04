package com.example.repo;

import com.example.dto.Users;

public interface UserRepo {

	public int insert(Users user);
	public Users selectById(String userId);
}
