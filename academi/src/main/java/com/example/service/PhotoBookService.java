package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.dto.PhotoBook;

public interface PhotoBookService {

	//폴더와 아이디로 공유자정보를 불러옴
	public List<PhotoBook> selectOne(String userId,String folderName);
	/**
	 * 접속주소 주인과 공유받는사람의 아이디를 입력받아 공유폴더이름리스트를 가져옴
	 */
	public List<String> selectFolderName(String pathUserName, String shareUserId);

	/**
	 * 새폴더생성시 DB에 폴더네임 추가
	 */
	public int insertFolderName(String userId, String newFolderName);

	// select 자신폴더
	public List<PhotoBook> selectMyFolder(String userId);

	// select 공유받은 폴더
	public List<PhotoBook> selectSharedFolder(String userId);

	// select 닉네임 검색
	public List<Map<String,String>> searchNick(String userNick);

	// 1번창에 공유자추가 update
	public int share1up(String userId, String shareId, String folderName);

	// 2번창에 공유자추가 update
	public int share2up(String userId, String shareId, String folderName);

	// 3번창에 공유자추가 update
	public int share3up(String userId, String shareId, String folderName);

	// 4번창에 공유자추가 update
	public int share4up(String userId, String shareId, String folderName);

}
