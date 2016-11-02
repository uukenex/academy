package com.example.academi.repo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;
import com.example.repo.PhotoBookRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class PhotoRepoTest {
	static Logger logger = LoggerFactory.getLogger(PhotoRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	PhotoBookRepo prepo;

	@Test
	public void ETEST(){
		String userId="ㅋㅌㅊ";
		String folderName="shm";
		String shareId1="zzxx";
		prepo.insertShareId(userId, folderName, shareId1);
	}
	
	@Test
	public void seleTest(){
		String pathUserId="zzxx";
				String userId ="ㅋㅌㅊ" ;
		prepo.selectShareFolder(pathUserId, userId);
	}
}
