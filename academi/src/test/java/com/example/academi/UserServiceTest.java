package com.example.academi;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;
import com.example.dto.Users;
import com.example.service.UserService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class UserServiceTest {

	@Autowired
	UserService uService;
	@Test
	public void JoinTest() {
		Users user = new Users("zzxx","pass","전","zzxx@z.z","01099999808","나님");
		int result = uService.joinUser(user);
		assertThat(result, is(1));
	}

}
