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
	
	/** 핫플레이스 도지도 **/
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

	/** 핫플레이스 경기 **/
	@Override
	public List<Mro> selectGunggi() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "gunggi";
		return template.selectList(statement);
	}

	/** 핫플레이스 강원 **/
	@Override
	public List<Mro> selectGangwon() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "gangwon";
		return template.selectList(statement);
	}

	/** 핫플레이스 충북 **/
	@Override
	public List<Mro> selectChungbuk() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "chungbuk";
		return template.selectList(statement);
	}

	/** 핫플레이스 충남 **/
	@Override
	public List<Mro> selectChungnam() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "chungnam";
		return template.selectList(statement);
	}

	/** 핫플레이스 경북 **/
	@Override
	public List<Mro> selectKungbuk() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "kungbuk";
		return template.selectList(statement);
	}

	/** 핫플레이스 경남 **/
	@Override
	public List<Mro> selectKungnam() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "kungnam";
		return template.selectList(statement);
	}

	/** 핫플레이스 전북 **/
	@Override
	public List<Mro> selectJunbuk() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "junbuk";
		return template.selectList(statement);
	}

	/** 핫플레이스 전남 **/
	@Override
	public List<Mro> selectJunnam() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "junnam";
		return template.selectList(statement);
	}

	/** 핫플레이스 제주 **/
	@Override
	public List<Mro> selectJeju() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "jeju";
		return template.selectList(statement);
	}

}
