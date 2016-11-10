package com.example.service;

import java.util.List;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dto.Review;
import com.example.dto.Route;
import com.example.repo.ReviewReplyRepo;
import com.example.repo.ReviewRepo;
import com.example.repo.RouteRepo;

import ch.qos.logback.classic.Logger;

@Service
public class RouteServiceImpl implements RouteService {
	@Autowired
	RouteRepo rrepo;
	@Autowired
	ReviewRepo reviewRepo;
	@Autowired
	ReviewReplyRepo reviewReplyRepo;
	static Logger logger = (Logger) LoggerFactory.getLogger(RouteServiceImpl.class);
	
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

	@Transactional
	@Override
	public int deleteRoute(int routeNo) {
		List<Review> r = reviewRepo.selectByRouteNo(routeNo);
		int result = 0;
		for (int i = 0; i < r.size(); i++) {
			int reviewNo = r.get(i).getReviewNo();
			result = reviewReplyRepo.deleteReply(reviewNo);
			logger.trace("댓글삭제");
		}
		result = reviewRepo.deleteByRouteNo(routeNo);
		logger.trace("글삭제");
		result = rrepo.deleteRoute(routeNo);
		logger.trace("루트삭제");
		return result;
	}

	@Override
	public List<Route> selectRouteById(String userId) {
		return rrepo.selectRouteById(userId);
	}

	@Override
	public List<Route> selectRouteByIdForMypage(String userId, int page) {
		// TODO Auto-generated method stub
		return rrepo.selectRouteByIdForMypage(userId, page);
	}

	@Override
	public int pageCountbyId(String userId) {
		// TODO Auto-generated method stub
		return rrepo.pageCountbyId(userId);
	}

	@Override
	public List<Route> selectMainList() {
		// TODO Auto-generated method stub
		return rrepo.selectMainList();
	}

}
