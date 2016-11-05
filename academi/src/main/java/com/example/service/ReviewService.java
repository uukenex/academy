package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.dto.Review;

public interface ReviewService {
	public int count(int reviewNo);
	// 후기글 보기
	public Review selectReview(int reviewNo);

	// 후기글 쓰기
	public int insertReview(String reviewTitle,
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			int routeNo, String userId);

	// 후기글 수정
	public int updateReview(int reviewNo,
			String reviewTitle, 
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			int routeNo);

	// 후기글 삭제 - 댓글을 먼저 삭제해야함
	public int deleteReview(int reviewNo);

	// 4x4 페이지 로딩 추천먼저 띄우고 나머지9개를띄움
	public List<Review> reviewListByPage(int page); 

	// 이름검색 추천먼저 띄우고 나머지9개를띄움
	public List<Review> searchReviewByName(String reviewTitle, int page);

	// 내용검색 추천먼저 띄우고 나머지9개를띄움
	public List<Review> searchReviewByContent(String reviewContent, int page);

	// 닉네임검색 추천먼저 띄우고 나머지9개를띄움
	public List<Review> searchReviewByNick(String userNick, int page);
	// 루트에 따른 검색도 추가해야함
	public List<Review> searchReviewByRoute(String routeName, int page);
	
	/**
	 * keyword1 , keyword2 ...으로 map에 담아야함 6까지있음 
	 */
	public List<Review> mapAPISearchRoute(Map<String,String> keyword);
		
		
	// 추천하기 기능
	public int updateStar(int reviewNo);
	
	//페이지 카운트 총 게시물이 몇개인지?
	public int pageCount();
	
	// 마이페이지 - 내후기보기 서비스
	 public List<Review> myPageReview(String userId);
		
	 // 가장 최근에 쓴 글의 번호를 받아옴
	 public int currentNo();
}
