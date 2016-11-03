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
@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class PhotoBookServiceTest {
	static Logger logger = LoggerFactory.getLogger(PhotoBookServiceTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	PhotoBookService ps;
	String pathUserName="zzxx";
	String shareUserId="ㅋㅌㅊ";
	String userId = "zzxx";
	String folderName="asdasd";
	String userNick="zz";
	@Test
	public void test0(){
		ps.selectOne(userId, folderName);
		ps.selectMyFolder(userId);
		ps.selectSharedFolder(shareUserId);
		ps.searchNick(userNick);
	}
	@Test
	public void test(){
		
		ps.selectFolderName(pathUserName, shareUserId);
	}
	
	@Test
	
	public void ttest(){
		ps.insertFolderName("zzxx","asdf");
	}

	String shareId="ㅋㅌㅊ";
	@Test
	public void updateTest(){
		ps.share1up(userId, shareId, folderName);
		ps.share2up(userId, shareId, folderName);
		ps.share3up(userId, shareId, folderName);
		ps.share4up(userId, shareId, folderName);
		
	}
	
	
}
