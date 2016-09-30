package com.example.academi;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.dto.Users;
import com.example.repo.UserRepo;
import com.example.config.ApplicationConfig;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class RepoInsert {
	static Logger logger = LoggerFactory.getLogger(RepoInsert.class);
	

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	UserRepo urepo;
	
	@Test
	public void test() {
		Users user= new Users("kk","1234","김","zz@n.n","01012345678","닉네임");
		int result = urepo.insert(user);
		assertThat(result, is(1));
	}

}
