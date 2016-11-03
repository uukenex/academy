package com.example.repo;

import java.util.List;

import com.example.dto.PhotoBook;

public interface PhotoBookRepo {
	//단일 폴더 셀렉트 공유자목록을 보여줌
	public List<PhotoBook> selectOne(String userId,String folderName);
	// insert Folder
	public int insertShareId(String userId, String folderName);

	// select by 주인아이디.현재접속아이디
	public List<String> selectShareFolder(String pathUserId, String userId);

	// select 자신폴더
	public List<PhotoBook> selectMyFolder(String userId);

	// select 공유받은 폴더
	public List<PhotoBook> selectSharedFolder(String userId);

	// select 닉네임 검색
	public List<String> searchNick(String userNick);

	// 1번창에 공유자추가 update
	public int share1up(String userId, String shareId, String folderName);

	// 2번창에 공유자추가 update
	public int share2up(String userId, String shareId, String folderName);

	// 3번창에 공유자추가 update
	public int share3up(String userId, String shareId, String folderName);

	// 4번창에 공유자추가 update
	public int share4up(String userId, String shareId, String folderName);

}
