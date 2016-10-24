package com.example.service;

import com.example.dto.Route;

public interface RouteService {
public Route selectRouteByNo(int routeNo);
public int insertRoute(String routeName,String routeContent,String routeFull,String userId);
}
