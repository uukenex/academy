package com.example.service;

import com.example.dto.Route;

public interface RouteService {
public Route selectRouteByNo(int routeNo);
public int insertRoute(String routeFull,String userId);
public int updateRoute(String routeName,String routeContent,String routeFull,int routeNo);
public int deleteRoute(int routeNo);
}
