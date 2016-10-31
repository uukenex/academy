package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Mro;

@Repository
public class MroRepoImpl implements MroRepo {
	private final String NAME_SPACE = "com.example.MroMapper.";
	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public int countUpdateDong(String city, String siGu, String dong) {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE +"regionCntDong";
		Map<String,Object> map= new HashMap<>();
		map.put("city",city);
		map.put("siGu", siGu);
		map.put("dong", dong);
		return template.update(statement,map);
	}

	@Override
	public int countUpdateSiGu(String city, String siGu) {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE +"regionCntSiGu";
		Map<String,Object> map= new HashMap<>();
		map.put("city",city);
		map.put("siGu", siGu);
		return template.update(statement,map);
	}

	@Override
	public int countUpdateCity(String city) {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE +"regionCntCity";
		return template.update(statement,city);
	}

	@Override
	public List<Mro> hotplaceDo() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "hotplaceDo";
		return template.selectList(statement);
	}

	@Override
	public List<Mro> selectDo() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "do";
		return template.selectList(statement);
	}

}
