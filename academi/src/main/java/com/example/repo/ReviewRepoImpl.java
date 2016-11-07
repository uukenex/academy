package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Review;

@Repository
public class ReviewRepoImpl implements ReviewRepo{
	private final String NAME_SPACE = "com.example.ReviewMapper.";
	static Logger logger = LoggerFactory.getLogger(ReviewRepoImpl.class);
	
	@Autowired
	SqlSessionTemplate template;
	//후기글 보기
	@Override
	public Review selectReview(int reviewNo) {
		String statement = NAME_SPACE + "select";
		return template.selectOne(statement, reviewNo);
	}
	//후기글 쓰기
	@Override
	public int insertReview(String reviewTitle, 
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			int routeNo,String reviewImage, String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String,Object> map = new HashMap<>();
		map.put("reviewTitle", reviewTitle);
		map.put("reviewContent0",reviewContent0);

		if(reviewContent1==null){
			reviewContent1="";
		}
		if(reviewContent2==null){
			reviewContent2="";
		}
		if(reviewContent3==null){
			reviewContent3="";
		}
		if(reviewContent4==null){
			reviewContent4="";
		}
		if(reviewContent5==null){
			reviewContent5="";
		}
		if(reviewContent6==null){
			reviewContent6="";
		}
		if(reviewContent7==null){
			reviewContent7="";
		}
		if(reviewContent8==null){
			reviewContent8="";
		}
		if(reviewContent9==null){
			reviewContent9="";
		}
		if(reviewImage==null){
			reviewImage="";
		}
		map.put("reviewContent1", reviewContent1);
		map.put("reviewContent2", reviewContent2);	
		map.put("reviewContent3", reviewContent3);	
		map.put("reviewContent4", reviewContent4);	
		map.put("reviewContent5", reviewContent5);	
		map.put("reviewContent6", reviewContent6);	
		map.put("reviewContent7", reviewContent7);	
		map.put("reviewContent8", reviewContent8);
		map.put("reviewContent9", reviewContent9);	
		map.put("userId", userId);
		map.put("routeNo", routeNo);
		map.put("reviewImage",reviewImage);
		logger.trace("{}",map);
		return template.insert(statement,map);
	}
	//후기글 수정
	@Override
	public int updateReview(int reviewNo,
			String reviewTitle,
			String reviewContent0,String reviewContent1,
			String reviewContent2,String reviewContent3,
			String reviewContent4,String reviewContent5,
			String reviewContent6,String reviewContent7,
			String reviewContent8,String reviewContent9,
			String reviewImage,
			int routeNo) {
		String statement = NAME_SPACE + "update";
		Map<String,Object> map = new HashMap<>();
		map.put("reviewNo", reviewNo);
		map.put("reviewTitle", reviewTitle);
		map.put("reviewContent0",reviewContent0);
		if(reviewContent1==null){
			reviewContent1="";
		}
		if(reviewContent2==null){
			reviewContent2="";
		}
		if(reviewContent3==null){
			reviewContent3="";
		}
		if(reviewContent4==null){
			reviewContent4="";
		}
		if(reviewContent5==null){
			reviewContent5="";
		}
		if(reviewContent6==null){
			reviewContent6="";
		}
		if(reviewContent7==null){
			reviewContent7="";
		}
		if(reviewContent8==null){
			reviewContent8="";
		}
		if(reviewContent9==null){
			reviewContent9="";
		}
		if(reviewImage==null){
			reviewImage="";
		}
		map.put("reviewContent1", reviewContent1);
		map.put("reviewContent2", reviewContent2);	
		map.put("reviewContent3", reviewContent3);	
		map.put("reviewContent4", reviewContent4);	
		map.put("reviewContent5", reviewContent5);	
		map.put("reviewContent6", reviewContent6);	
		map.put("reviewContent7", reviewContent7);	
		map.put("reviewContent8", reviewContent8);
		map.put("reviewContent9", reviewContent9);
		map.put("routeNo", routeNo);
		map.put("reviewImage", reviewImage);
		return template.insert(statement,map);
	}
	//후기글 삭제
	@Override
	public int deleteReview(int reviewNo) {
		String statement = NAME_SPACE + "delete";
		return template.insert(statement,reviewNo);
	}
	//4x1 추천 글띄워주기
	@Override
	public List<Review> starReview() {
		String statement = NAME_SPACE + "starReview";
		return template.selectList(statement);
	}
	//4x3 페이지 로딩
	@Override
	public List<Review> reviewListByPage(int page) {
		String statement = NAME_SPACE + "selectList";
		return template.selectList(statement,page);
	}
	//이름검색
	@Override
	public List<Review> searchReviewByName(String reviewTitle, int page) {
		String statement = NAME_SPACE + "searchListByName";
		Map <String,Object> map = new HashMap<>();
		map.put("reviewTitle", "%"+reviewTitle+"%");
		map.put("page", page);
		return template.selectList(statement,map);
	}
	//내용검색
	@Override
	public List<Review> searchReviewByContent(String reviewContent, int page) {
		String statement = NAME_SPACE + "searchListByContent";
		Map <String,Object> map = new HashMap<>();
		map.put("reviewContent", "%"+reviewContent+"%");
		map.put("page", page);
		return template.selectList(statement,map);
	}
	//닉네임검색
	@Override
	public List<Review> searchReviewByNick(String userNick, int page) {
		String statement = NAME_SPACE + "searchListByNick";
		Map <String,Object> map = new HashMap<>();
		map.put("userNick", "%"+userNick+"%");
		map.put("page", page);
		return template.selectList(statement,map);
	}
	//경로검색
	@Override
	public List<Review> searchReviewByRoute(String routeName, int page) {
		String statement = NAME_SPACE + "searchListByRoute";
		Map <String,Object> map = new HashMap<>();
		map.put("route", "%"+routeName+"%");
		map.put("page", page);
		return template.selectList(statement,map);
	}
	
	//지도 api 
	@Override
	public List<Review> mapApiSearchRoute(Map<String,String> keyword) {
		String statement = NAME_SPACE + "mapAPIsearchRoute";
		return template.selectList(statement,keyword);
	}
	
	
	
	@Override
	public int updateReviewCount(int reviewNo) {
		String statement = NAME_SPACE + "countUpdate";
		return template.update(statement,reviewNo);
		
	}
	@Override
	public int updateStar(int reviewNo) {
		String statement = NAME_SPACE + "starUpdate";
		return template.update(statement,reviewNo);
	}
	@Override
	public int pageCount() {
		String statement = NAME_SPACE + "pageCount";
		return template.selectOne(statement);
	}
	
	@Override
	public List<Review> selectReviewById(String userId, int page) {
		String statement = NAME_SPACE+"selectReviewById";
		Map <String,Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("page", page);
		return template.selectList(statement,map);
		
	}
	@Override
	public int selectNo() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE+"selectNo";
		return template.selectOne(statement);
	}
	@Override
	public int pageCountbyId(String userId) {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE+"pageCountbyId";
		return template.selectOne(statement,userId);
	}
	


}
