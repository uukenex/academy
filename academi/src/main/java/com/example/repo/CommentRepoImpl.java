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
	public void updateComment(Comments comment) {
		// TODO Auto-generated method stub

	}

	// 게시글 삭제(작성자만 가능)
	@Override
	public void deleteComment(int commentNo) {
		// TODO Auto-generated method stub

	}

	// 페이지당 리스트를 보여줌
	@Override
	public List<Comments> getCommentByPage(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
