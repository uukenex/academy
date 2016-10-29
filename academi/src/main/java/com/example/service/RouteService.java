package com.example.service;

import java.util.List;

import com.example.dto.Route;

public interface RouteService {
public Route selectRouteByNo(int routeNo);
public int insertRoute(String routeFull,String userId);
public int updateRoute(String routeName,String routeContent,String routeFull,int routeNo);
public int deleteRoute(int routeNo);
//계획 보기 by id
		public List<Route> selectRouteById(String userId);

}
