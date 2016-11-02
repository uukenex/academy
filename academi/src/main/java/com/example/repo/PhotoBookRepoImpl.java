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
	public int insertShareId(String userId, String photoFolderName, String photoShareId1) {

		String statement = NAME_SPACE + "insert";
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("photoFolderName", photoFolderName);
		map.put("photoShareId1", photoShareId1);
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

}
