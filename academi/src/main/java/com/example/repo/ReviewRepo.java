package com.example.repo;

import java.util.List;
import java.util.Map;

import com.example.dto.Review;

public interface ReviewRepo {
	// 후기글 보기
	public Review selectReview(int reviewNo);

	// 후기글 쓰기
	public int insertReview(String reviewTitle, 
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			int routeNo,String reviewImage, String userId);

	// 후기글 수정
	public int updateReview(int reviewNo,
			String reviewTitle, 
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			String reviewImage,
			int routeNo);

	public List<Review> selectReviewById(String userId, int page);
	
	// 후기글 삭제
	public int deleteReview(int reviewNo);

	// 3x1 추천 글띄워주기
	public List<Review> starReview();

	// 3x3 페이지 로딩
	public List<Review> reviewListByPage(int page);

	// 이름검색
	public List<Review> searchReviewByName(String reviewTitle, int page);

	// 내용검색
	public List<Review> searchReviewByContent(String reviewContent, int page);

	// 닉네임검색
	public List<Review> searchReviewByNick(String userNick, int page);

	// 경로검색
	public List<Review> searchReviewByRoute(String routeName,int page);
	
	// 지도에서 쓸 경로검색
	public List<Review> mapApiSearchRoute(Map<String,String> keyword);
	// 조회수 늘리기
	public int updateReviewCount(int reviewNo);
	// 추천하기 기능
	public int updateStar(int reviewNo);
	public int pageCount();
	public int pageCountbyId(String userId);
	
	//가장 최근에 쓴 글의 페이지 번호를 가져온다.
	public int selectNo();
}
