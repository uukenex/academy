package com.example.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.CommentReply;

@Repository
public class CommentReplyRepoImpl implements CommentReplyRepo {
	private final String NAME_SPACE = "com.example.CommentReplyMapper.";
	@Autowired
	SqlSessionTemplate template;

	// 특정 게시글번호로 되어있는 댓글목록 조회 list
	@Override
	public List<CommentReply> selectReplyList(int replyCommentNo) {
		String statement = NAME_SPACE + "select";
		return template.selectList(statement, replyCommentNo);
	}

	// 댓글 달기 기능 map으로 데이터 받음.댓글내용,게시글번호,작성자
	@Override
	public int insertReply(String replyContent, int replyCommentNo, String userId) {
		String statement = NAME_SPACE + "insert";
		Map<String, Object> map = new HashMap<>();
		map.put("replyContent", replyContent);
		map.put("replyCommentNo", replyCommentNo);
		map.put("userId", userId);
		return template.insert(statement, map);
	}

	// 댓글 삭제 기능 번호로
	@Override
	public int deleteReply(int replyNo) {
		String statement = NAME_SPACE + "delete";
		return template.delete(statement, replyNo);
	}

	// 특정 게시글 번호로 되어있는 댓글삭제-이건 글삭제할때만 들어감
	@Override
	public int deleteReplyByCommentNo(int replyCommentNo) {
		String statement = NAME_SPACE + "deleteByCommentNo";
		return template.delete(statement, replyCommentNo);
	}

}
