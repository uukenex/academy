package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.Route;
import com.example.repo.RouteRepo;

@Service
public class RouteServiceImpl implements RouteService {
	@Autowired
	RouteRepo rrepo;

	@Override
	public Route selectRouteByNo(int routeNo) {
		// TODO Auto-generated method stub
		return rrepo.selectRouteByNo(routeNo);
	}

	@Override
	public int insertRoute(String routeFull, String userId) {
		// TODO Auto-generated method stub
		return rrepo.insertRoute(routeFull, userId);
	}

	@Override
	public int updateRoute(String routeName, String routeContent, String routeFull, int routeNo) {
		return rrepo.updateRoute(routeNo, routeName, routeContent, routeFull);
	}

	@Override
	public int deleteRoute(int routeNo) {
		return rrepo.deleteRoute(routeNo);
	}
	
	
}
