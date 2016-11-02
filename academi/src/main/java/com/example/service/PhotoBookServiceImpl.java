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
	public List<String> selectFolderName(String pathUserName, String shareUserId) {
		return prepo.selectShareFolder(pathUserName, shareUserId);
	}

}
