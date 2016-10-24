package com.example.repo;

import com.example.dto.Route;

public interface RouteRepo {
	// 기능을 정의
	
	// 루트 번호로 루트정보를 가져옴
	public Route selectRouteByNo(int routeNo);
	// 루트 저장하기
	public int insertRoute(String routeName,String routeContent,String routeFull,String userId);
}
