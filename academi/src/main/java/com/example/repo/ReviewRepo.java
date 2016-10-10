package com.example.repo;

import java.util.List;

import com.example.dto.Review;

public interface ReviewRepo {
	// 후기글 보기
	public Review selectReview(int reviewNo);

	// 후기글 쓰기
	public int insertReview(String reviewTitle, String reviewContent, int routeNo, String userId);

	// 후기글 수정
	public int updateReview(int reviewNo, String reviewTitle, String reviewContent, int routeNo);

	// 후기글 삭제
	public int deleteReview(int reviewNo);

	// 4x1 추천 글띄워주기
	public List<Review> starReview();

	// 4x3 페이지 로딩
	public List<Review> reviewListByPage(int page);

	// 이름검색
	public List<Review> searchReviewByName(String reviewTitle, int page);

	// 내용검색
	public List<Review> searchReviewByContent(String reviewContent, int page);

	// 닉네임검색
	public List<Review> searchReviewByNick(String userNick, int page);

	// 조회수 늘리기
	public int updateReviewCount(int reviewNo);
	// 추천하기 기능
	public int updateStar(int reviewNo);
}
