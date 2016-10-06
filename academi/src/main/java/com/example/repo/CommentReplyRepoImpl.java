package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.CommentReply;

@Repository
public class CommentReplyRepoImpl implements CommentReplyRepo{
	private final String NAME_SPACE = "com.example.CommentReplyMapper.";
	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public List<CommentReply> selectReplyList(int replyCommentNo) {
		String statement = NAME_SPACE + "select";
		return template.selectList(statement, replyCommentNo);
	}

	@Override
	public int insertReply(String replyContent, int replyCommentNo, String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String,Object> map = new HashMap<>();
		map.put("replyContent", replyContent);
		map.put("replyCommentNo", replyCommentNo);
		map.put("userId", userId);
		return template.insert(statement, map);
	}

	@Override
	public int deleteReply(int replyNo) {
		String statement = NAME_SPACE + "delete";
		return template.delete(statement, replyNo);
	}

	@Override
	public int deleteReplyByCommentNo(int replyCommentNo) {
		String statement = NAME_SPACE + "deleteByCommentNo";
		return template.delete(statement, replyCommentNo);
	}

	

}
