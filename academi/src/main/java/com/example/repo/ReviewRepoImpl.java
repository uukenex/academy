package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Review;

@Repository
public class ReviewRepoImpl implements ReviewRepo{
	private final String NAME_SPACE = "com.example.ReviewMapper.";
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
	public int insertReview(String reviewTitle, String reviewContent, int routeNo, String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String,Object> map = new HashMap<>();
		map.put("reviewTitle", reviewTitle);
		map.put("reviewContent",reviewContent);
		map.put("userId", userId);
		map.put("routeNo", routeNo);
		return template.insert(statement,map);
	}
	//후기글 수정
	@Override
	public int updateReview(int reviewNo,String reviewTitle, String reviewContent, int routeNo) {
		String statement = NAME_SPACE + "update";
		Map<String,Object> map = new HashMap<>();
		map.put("reviewNo", reviewNo);
		map.put("reviewTitle", reviewTitle);
		map.put("reviewContent",reviewContent);
		map.put("routeNo", routeNo);
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
	@Override
	public int updateReviewCount(int reviewNo) {
		String statement = NAME_SPACE + "countUpdate";
		return template.update(statement,reviewNo);
		
	}

}
