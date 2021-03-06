package com.example.repo;

import java.util.List;

import com.example.dto.Route;

public interface RouteRepo {
	// 기능을 정의
	
	// 루트 번호로 루트정보를 가져옴
	public Route selectRouteByNo(int routeNo);
	// 루트 저장하기
	public int insertRoute(String routeFull,String userId);
	// 루트 수정하기
	public int updateRoute(int routeNo,String routeName,String routeContent,String routeFull);
	// 루트 삭제하기
	public int deleteRoute(int routeNo);
	
	// 계획 보기 by id
		public List<Route> selectRouteById(String userId);
		
		public List<Route> selectRouteByIdForMypage(String userId,int page);
	
		public int pageCountbyId(String userId);
		
		public List<Route> selectMainList();
}
