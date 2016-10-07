package com.example.repo;

import java.util.List;

import com.example.dto.ReviewReply;

public interface ReviewReplyRepo {
	// 특정 후기번호로 되어있는 댓글목록 조회 list
	public List<ReviewReply> selectReplyList(int replyReviewNo);

	// 댓글 달기 기능 map으로 데이터 받음.댓글내용,후기글번호,작성자
	public int insertReply(String replyContent, int replyReviewNo, String userId);

	// 댓글 삭제 기능 번호로
	public int deleteReply(int replyNo);

	// 특정 후기글 번호로 되어있는 댓글삭제-이건 글삭제할때만 들어감
	public int deleteReplyByReviewNo(int replyReviewNo);
}
