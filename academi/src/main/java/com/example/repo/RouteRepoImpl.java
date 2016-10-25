package com.example.repo;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Route;

@Repository
public class RouteRepoImpl implements RouteRepo {
	private final String NAME_SPACE = "com.example.RouteMapper.";
	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public Route selectRouteByNo(int routeNo) {
		String statement = NAME_SPACE + "select";
		return template.selectOne(statement, routeNo);
	}

	@Override
	public int insertRoute(String routeFull, String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String,String> map = new HashMap<>();
		map.put("routeFull", routeFull);
		map.put("userId", userId);
		return template.insert(statement, map);
	}

	@Override
	public int updateRoute(int routeNo, String routeName, String routeContent, String routeFull) {
		String statement = NAME_SPACE + "update";
		Map<String,Object> map = new HashMap<>();
		map.put("routeNo", routeNo);
		map.put("routeName", routeName);
		map.put("routeContent", routeContent);
		map.put("routeFull", routeFull);
		return template.insert(statement, map);
	}

	@Override
	public int deleteRoute(int routeNo) {
		String statement = NAME_SPACE + "delete";
		return template.delete(statement,routeNo);
	}

}
