package com.example.repo;

import java.util.List;

import com.example.dto.CommentReply;

public interface CommentReplyRepo {
	// 특정 게시글번호로 되어있는 댓글목록 조회 list
	public List<CommentReply> selectReplyList(int replyCommentNo);

	// 댓글 달기 기능 map으로 데이터 받음.댓글내용,게시글번호,작성자
	public int insertReply(String replyContent, int replyCommentNo, String userId);

	// 댓글 삭제 기능 번호로
	public int deleteReply(int replyNo);

	// 특정 게시글 번호로 되어있는 댓글삭제-이건 글삭제할때만 들어감
	public int deleteReplyByCommentNo(int replyCommentNo);
}
