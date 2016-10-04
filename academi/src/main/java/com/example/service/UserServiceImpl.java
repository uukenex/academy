package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.dto.Users;
import com.example.repo.UserRepo;

public class UserServiceImpl implements UserService{
@Autowired
UserRepo urepo;
	
	@Override
	public int joinUser(Users user) {
		return urepo.insert(user);
	}

}
