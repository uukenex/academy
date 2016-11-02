package com.example.academi.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.example.config.ApplicationConfig;
import com.example.service.PhotoBookService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class PhotoBookServiceTest {
	static Logger logger = LoggerFactory.getLogger(PhotoBookServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	PhotoBookService ps;

	@Test
	public void test(){
		String pathUserName="zzxx";
		String shareUserId="ㅋㅌㅊ";
		ps.selectFolderName(pathUserName, shareUserId);
	}

}
