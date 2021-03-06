package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Comments;

@Repository
public class CommentRepoImpl implements CommentRepo {
	private final String NAME_SPACE = "com.example.CommentMapper.";
	@Autowired
	SqlSessionTemplate template;


	// 단일 게시글 보기

	@Override
	public Comments selectComment(int commentNo) {
		String statement = NAME_SPACE + "select";
		return template.selectOne(statement, commentNo);
	}
	// 게시글 쓰기(공지사항은 관리자만 작성가능)

	@Override
	public int insertComment(String commentCategory,String commentName,String commentContent,String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String,String> map = new HashMap<>();
		map.put("commentCategory", commentCategory);
		map.put("commentName", commentName);
		map.put("commentContent", commentContent);
		map.put("userId", userId);
		return template.insert(statement, map);
	}

	// 게시글 수정(작성자만 가능)
	@Override
	public int updateComment(int commentNo,String commentName,String commentContent) {
		String statement = NAME_SPACE + "update";
		Map<String,Object> map = new HashMap<>();
		map.put("commentNo", commentNo);
		map.put("commentName", commentName);
		map.put("commentContent", commentContent);
		return template.update(statement,map);
	}

	// 게시글 삭제(작성자만 가능)
	@Override
	public int deleteComment(int commentNo) {
		String statement = NAME_SPACE + "delete";
		return template.delete(statement,commentNo);
		// TODO Auto-generated method stub

	}

	// 페이지당 리스트를 보여줌
	@Override
	public List<Comments> getCommentByPage(String commentCategory,int page) {
		String statement = NAME_SPACE + "selectList";
		Map<String,Object> map= new HashMap<>();
		map.put("commentCategory", commentCategory);
		map.put("page", page);
		return template.selectList(statement,map);
	}

	@Override
	public List<Comments> searchCommentByNameOfPage(String commentName,String commentCategory, int page) {
		String statement = NAME_SPACE + "searchListByName";
		Map<String,Object> map= new HashMap<>();
		map.put("commentName", "%"+commentName+"%");
		map.put("commentCategory", commentCategory);
		map.put("page", page);
		return template.selectList(statement,map);
	}
	@Override
	public List<Comments> searchCommentByContentOfPage(String commentContent, String commentCategory, int page) {
		String statement = NAME_SPACE + "searchListByContent";
		Map<String,Object> map= new HashMap<>();
		map.put("commentContent", "%"+commentContent+"%");
		map.put("commentCategory", commentCategory);
		map.put("page", page);
		return template.selectList(statement,map);
	}
	@Override
	public List<Comments> searchCommentByNickOfPage(String userNick, String commentCategory, int page) {
		String statement = NAME_SPACE + "searchListByNick";
		Map<String,Object> map= new HashMap<>();
		map.put("userNick", "%"+userNick+"%");
		map.put("commentCategory", commentCategory);
		map.put("page", page);
		return template.selectList(statement,map);
	}

	@Override
	public int updateCommentCount(int commentNo) {
			String statement = NAME_SPACE + "countUpdate";
			return template.update(statement,commentNo);
			
	}

	@Override
	public int pageCount(String commentCategory) {
		String statement = NAME_SPACE + "pageCount";
		return template.selectOne(statement,commentCategory);
	}

	@Override
	public int selectNo() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "selectNo";
		return template.selectOne(statement);
	}

	@Override
	public List<Comments> selectNoticeTop5() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "selectNoticeTop5";
		return template.selectList(statement);
	}

	@Override
	public List<Comments> selectFreeTop5() {
		// TODO Auto-generated method stub
		String statement = NAME_SPACE + "selectFreeTop5";
		return template.selectList(statement);
	}


}
