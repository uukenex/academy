package com.example.service;

import java.util.ArrayList;
import java.util.List;

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
	@Transactional
	public Review selectReview(int reviewNo) {
		rrepo.updateReviewCount(reviewNo);
		return rrepo.selectReview(reviewNo);
	}

	// 후기글 쓰기
	public int insertReview(String reviewTitle, String reviewContent, int routeNo, String userId) {
		return rrepo.insertReview(reviewTitle, reviewContent, routeNo, userId);
	}

	// 후기글 수정
	public int updateReview(int reviewNo, String reviewTitle, String reviewContent, int routeNo) {
		return rrepo.updateReview(reviewNo, reviewTitle, reviewContent, routeNo);
	}

	// 후기글 삭제 - 댓글을 먼저 삭제해야함
	@Transactional
	public int deleteReview(int reviewNo) {
		int result = rrrepo.deleteReplyByReviewNo(reviewNo);
		result = rrepo.deleteReview(reviewNo);
		return result;
	}

	// 4x4 페이지 로딩 추천먼저 띄우고 나머지12개를띄움
	public List<List<Review>> reviewListByPage(int page) {
		List<List<Review>> result = new ArrayList<>();
		result.add(rrepo.starReview());
		result.add(rrepo.reviewListByPage(page));
		return result;
	}

	// 이름검색 추천먼저 띄우고 나머지12개를띄움
	public List<List<Review>> searchReviewByName(String reviewTitle, int page) {
		List<List<Review>> result = new ArrayList<>();
		result.add(rrepo.starReview());
		result.add(rrepo.searchReviewByName(reviewTitle, page));
		return result;
	}

	// 내용검색 추천먼저 띄우고 나머지12개를띄움
	public List<List<Review>> searchReviewByContent(String reviewContent, int page) {
		List<List<Review>> result = new ArrayList<>();
		result.add(rrepo.starReview());
		result.add(rrepo.searchReviewByContent(reviewContent, page));
		return result;
	}

	// 닉네임검색 추천먼저 띄우고 나머지12개를띄움
	public List<List<Review>> searchReviewByNick(String userNick, int page) {
		List<List<Review>> result = new ArrayList<>();
		result.add(rrepo.starReview());
		result.add(rrepo.searchReviewByNick(userNick, page));
		return result;
	}

	@Override
	public int updateStar(int reviewNo) {
		return rrepo.updateStar(reviewNo);
	}
}
