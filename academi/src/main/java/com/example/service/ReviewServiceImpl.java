package com.example.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dto.Review;
import com.example.repo.ReviewReplyRepo;
import com.example.repo.ReviewRepo;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	ReviewRepo rrepo;
	@Autowired
	ReviewReplyRepo rrrepo;

	// 후기글 보기
	
	public Review selectReview(int reviewNo) {
		return rrepo.selectReview(reviewNo);
	}

	// 후기글 쓰기
	public int insertReview(String reviewTitle,
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			int routeNo, String reviewImage,String userId) {
		return rrepo.insertReview(reviewTitle, 
				reviewContent0,reviewContent1,
				reviewContent2,reviewContent3,
				reviewContent4, reviewContent5,
				reviewContent6, reviewContent7,
				reviewContent8, reviewContent9, 
				routeNo,reviewImage, userId);
	}

	// 후기글 수정
	public int updateReview(int reviewNo,
			String reviewTitle, 
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			int routeNo) {
		return rrepo.updateReview(reviewNo, reviewTitle,
				reviewContent0,reviewContent1,
				reviewContent2,reviewContent3,
				reviewContent4, reviewContent5,
				reviewContent6, reviewContent7,
				reviewContent8, reviewContent9,
				routeNo);
	}

	// 후기글 삭제 - 댓글을 먼저 삭제해야함
	@Transactional
	public int deleteReview(int reviewNo) {
		int result = rrrepo.deleteReplyByReviewNo(reviewNo);
		result = rrepo.deleteReview(reviewNo);
		return result;
	}

	// 4x4 페이지 로딩 추천먼저 띄우고 나머지9개를띄움
	public List<Review> reviewListByPage(int page) {
		List<Review> result = new ArrayList<>();
		List<Review> r1 = rrepo.starReview();
		List<Review> r2 = rrepo.reviewListByPage(page);
		for(int i=0;i<r1.size();i++){
			result.add(r1.get(i));
		}
		for(int i=0;i<r2.size();i++){
			result.add(r2.get(i));
		}
		return result;
	}

	// 배경에 사진을 띄워줌
	public List<Review> reviewTop3(){
		
		return rrepo.starReview(); 
	}

	// 이름검색 추천먼저 띄우고 나머지9개를띄움
	public List<Review> searchReviewByName(String reviewTitle, int page) {
		List<Review> result = new ArrayList<>();
		List<Review> r1 = rrepo.starReview();
		List<Review> r2 = rrepo.searchReviewByName(reviewTitle, page);
		for(int i=0;i<r2.size();i++){
			result.add(r2.get(i));
		}
		return result;
	}

	// 내용검색 추천먼저 띄우고 나머지9개를띄움
	public List<Review> searchReviewByContent(String reviewContent, int page) {
		List<Review> result = new ArrayList<>();
		List<Review> r1 = rrepo.starReview();
		List<Review> r2 = rrepo.searchReviewByContent(reviewContent, page);
		for(int i=0;i<r2.size();i++){
			result.add(r2.get(i));
		}
		return result;
	}

	// 닉네임검색 추천먼저 띄우고 나머지9개를띄움
	public List<Review> searchReviewByNick(String userNick, int page) {
		List<Review> result = new ArrayList<>();
		List<Review> r1 = rrepo.starReview();
		List<Review> r2 = rrepo.searchReviewByNick(userNick, page);
		for(int i=0;i<r2.size();i++){
			result.add(r2.get(i));
		}
		
		return result;
	}
	// 닉네임검색 추천먼저 띄우고 나머지9개를띄움
		public List<Review> searchReviewByRoute(String routeName, int page) {
			List<Review> result = new ArrayList<>();
			List<Review> r1 = rrepo.starReview();
			List<Review> r2 = rrepo.searchReviewByRoute(routeName, page);
			for(int i=0;i<r2.size();i++){
				result.add(r2.get(i));
			}
			
			return result;
		}
		
	
	@Override
	public List<Review> mapAPISearchRoute(Map<String, String> keyword) {
		return rrepo.mapApiSearchRoute(keyword);
	}
		
	@Override
	public int updateStar(int reviewNo) {
		return rrepo.updateStar(reviewNo);
	}

	@Override
	public int count(int reviewNo) {
		return rrepo.updateReviewCount(reviewNo);
		
	}

	@Override
	public int pageCount() {
		return rrepo.pageCount();
	}
	
	//내 후기보기 서비스
	@Override
	public List<Review> myPageReview(String userId, int page) {
		return rrepo.selectReviewById(userId,page);
	}

	@Override
	public int currentNo() {
		// TODO Auto-generated method stub
		return rrepo.selectNo();
	}

	@Override
	public int pageCountbyId(String userId) {
		// TODO Auto-generated method stub
		return rrepo.pageCountbyId(userId);
	}

	
}
