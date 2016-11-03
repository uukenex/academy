package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.PhotoBook;
import com.example.repo.PhotoBookRepo;

@Service
public class PhotoBookServiceImpl implements PhotoBookService {
	@Autowired
	PhotoBookRepo prepo;

	@Override
	public List<PhotoBook> selectOne(String userId, String folderName) {
		return prepo.selectOne(userId, folderName);
	}
	@Override
	public List<String> selectFolderName(String pathUserName, String shareUserId) {
		return prepo.selectShareFolder(pathUserName, shareUserId);
	}

	@Override
	public int insertFolderName(String userId, String newFolderName) {
		return prepo.insertShareId(userId, newFolderName);
	}

	@Override
	public List<PhotoBook> selectMyFolder(String userId) {
		return prepo.selectMyFolder(userId);
	}

	@Override
	public List<PhotoBook> selectSharedFolder(String userId) {
		return prepo.selectSharedFolder(userId);
	}

	@Override
	public List<String> searchNick(String userNick) {
		return prepo.searchNick(userNick);
	}

	@Override
	public int share1up(String userId, String shareId, String folderName) {
		return prepo.share1up(userId, shareId, folderName);
	}

	@Override
	public int share2up(String userId, String shareId, String folderName) {
		return prepo.share2up(userId, shareId, folderName);
	}

	@Override
	public int share3up(String userId, String shareId, String folderName) {
		return prepo.share3up(userId, shareId, folderName);
	}

	@Override
	public int share4up(String userId, String shareId, String folderName) {
		return prepo.share4up(userId, shareId, folderName);
	}

	

}
