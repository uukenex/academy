package com.example.repo;

import java.util.List;

import com.example.dto.PhotoBook;

public interface PhotoBookRepo {
//insert 미완성
	public int insertShareId(String userId,String folderName,String shareId1);
	
	//select by 주인아이디.현재접속아이디
	public List<String> selectShareFolder(String pathUserId,String userId);
}
