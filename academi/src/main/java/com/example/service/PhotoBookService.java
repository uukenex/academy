package com.example.service;

import java.util.List;

import com.example.dto.PhotoBook;

public interface PhotoBookService {

	/**
	 * 공유자와 공유받는사람의 아이디를 
	 * 입력받아 폴더이름리스트를 가져옴 
	 */
	public List<String> selectFolderName(String pathUserName,String shareUserId);
}
