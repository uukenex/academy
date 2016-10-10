package com.example.service;

import java.util.List;

import com.example.dto.Review;

public interface ReviewService {
	// 후기글 보기
	public Review selectReview(int reviewNo);

	// 후기글 쓰기
	public int insertReview(String reviewTitle, String reviewContent, int routeNo, String userId);

	// 후기글 수정
	public int updateReview(int reviewNo, String reviewTitle, String reviewContent, int routeNo);

	// 후기글 삭제 - 댓글을 먼저 삭제해야함
	public int deleteReview(int reviewNo);

	// 4x4 페이지 로딩 추천먼저 띄우고 나머지12개를띄움
	public void reviewListByPage(int page); 

	// 이름검색 추천먼저 띄우고 나머지12개를띄움
	public void searchReviewByName(String reviewTitle, int page);

	// 내용검색 추천먼저 띄우고 나머지12개를띄움
	public void searchReviewByContent(String reviewContent, int page);

	// 닉네임검색 추천먼저 띄우고 나머지12개를띄움
	public void searchReviewByNick(String userNick, int page);
	// 루트에 따른 검색도 추가해야함
	
	// 추천하기 기능
	public int updateStar(int reviewNo);
}
