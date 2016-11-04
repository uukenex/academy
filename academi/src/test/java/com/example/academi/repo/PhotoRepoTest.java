package com.example.academi.repo;

import java.util.List;
import java.util.Map;

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
import com.example.repo.PhotoBookRepo;

@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class PhotoRepoTest {
	static Logger logger = LoggerFactory.getLogger(PhotoRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	PhotoBookRepo prepo;

	@Test
	public void zdtest(){
		String userId = "ㅋㅌㅊ";
		String folderName = "shm";
		prepo.selectOne(userId, folderName);
	}
	// insertFolder
	@Test
	public void ETEST() {
		String userId = "ㅋㅌㅊ";
		String folderName = "shm";
		prepo.insertShareId(userId, folderName);
	}

	// 주인아디에 접속한 현재아이디 공유된폴더
	@Test
	public void seleTest() {
		String pathUserId = "zzxx";
		String userId = "ㅋㅌㅊ";
		prepo.selectShareFolder(pathUserId, userId);
	}

	// 자기폴더전체리스트
	@Test
	public void seleTcest() {
		String pathUserId = "zzxx";
		String userId = "ㅋㅌㅊ";
		prepo.selectMyFolder(userId);
	}

	// 닉네임검색
	@Test
	public void sele1Tcest() {
		String pathUserId = "zzxx";
		String userId = "ㅋㅌㅊ";
		String userNick = "zz";
		List<Map<String,String>> list = prepo.searchNick(userNick);
		System.out.println(list);
		System.out.println(list.get(0));
		System.out.println(list.get(0).get("USER_NICK"));
		System.out.println(list.get(0).get("IDSTAR"));
	}

	// 1업데이트
	@Test
	public void sele2Tcest() {
		String shareId = "zzxx";
		String userId = "ㅋㅌㅊ";
		String folderName="shm";
		prepo.share1up(userId, shareId, folderName);
	}

	// 2업데이트
	@Test
	public void sel2eTcest() {
		String shareId = "zzxx";
		String userId = "ㅋㅌㅊ";
		String folderName="shm";
		prepo.share2up(userId, shareId, folderName);
	}

	// 3업데이트
	@Test
	public void sel3eTcest() {
		String shareId = "zzxx";
		String userId = "ㅋㅌㅊ";
		String folderName="shm";
		prepo.share3up(userId, shareId, folderName);
	}

	// 4업데이트
	@Test
	public void seleTces4t() {
		String shareId = "zzxx";
		String userId = "ㅋㅌㅊ";
		String folderName="shm";
		prepo.share4up(userId, shareId, folderName);
	}
}
