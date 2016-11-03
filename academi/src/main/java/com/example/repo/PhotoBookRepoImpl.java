package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.PhotoBook;

@Repository
public class PhotoBookRepoImpl implements PhotoBookRepo{
	private final String NAME_SPACE = "com.example.PhotoMapper.";
	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public List<PhotoBook> selectOne(String userId, String folderName) {
		String statement = NAME_SPACE + "selectOne";
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("photoFolderName", folderName);
		return template.selectList(statement, map);
	}
	@Override
	public int insertShareId(String userId, String photoFolderName) {
		String statement = NAME_SPACE + "insert";
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("photoFolderName", photoFolderName);
		return template.insert(statement, map);
	}
	@Override
	public List<String> selectShareFolder(String pathUserId, String userId) {
		String statement = NAME_SPACE + "select";
		Map<String, Object> map = new HashMap<>();
		map.put("userId",pathUserId );
		map.put("photoShareId1", userId); 
		return template.selectList(statement, map);
	}
	@Override
	public List<PhotoBook> selectMyFolder(String userId) {
		String statement = NAME_SPACE + "selectMyFolder";
		return template.selectList(statement, userId);
	}
	@Override
	public List<PhotoBook> selectSharedFolder(String userId) {
		String statement = NAME_SPACE + "selectShared";
		return template.selectList(statement, userId);
	}
	@Override
	public List<String> searchNick(String userNick) {
		String statement = NAME_SPACE + "searchNick";
		userNick = "%"+userNick+"%";
		return template.selectList(statement, userNick);
	}
	@Override
	public int share1up(String userId, String shareId, String folderName) {
		String statement = NAME_SPACE + "update1";
		Map<String, Object> map = new HashMap<>();
		map.put("userId",userId );
		map.put("photoShareId1", shareId); 
		map.put("photoFolderName", folderName); 
		return template.update(statement, map);
	}
	@Override
	public int share2up(String userId, String shareId, String folderName) {
		String statement = NAME_SPACE + "update2";
		Map<String, Object> map = new HashMap<>();
		map.put("userId",userId );
		map.put("photoShareId2", shareId); 
		map.put("photoFolderName", folderName); 
		return template.update(statement, map);
	}
	@Override
	public int share3up(String userId, String shareId, String folderName) {
		String statement = NAME_SPACE + "update3";
		Map<String, Object> map = new HashMap<>();
		map.put("userId",userId );
		map.put("photoShareId3", shareId); 
		map.put("photoFolderName", folderName); 
		return template.update(statement, map);
	}
	@Override
	public int share4up(String userId, String shareId, String folderName) {
		String statement = NAME_SPACE + "update4";
		Map<String, Object> map = new HashMap<>();
		map.put("userId",userId );
		map.put("photoShareId4", shareId); 
		map.put("photoFolderName", folderName); 
		return template.update(statement, map);
	}
	

}
