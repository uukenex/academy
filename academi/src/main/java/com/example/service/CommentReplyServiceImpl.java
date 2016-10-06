package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.CommentReply;
import com.example.repo.CommentReplyRepo;

@Service
public class CommentReplyServiceImpl implements CommentReplyService {
	@Autowired
	CommentReplyRepo crrepo;
	// 특정 게시글번호로 되어있는 댓글목록 조회 list
	@Override
	public List<CommentReply> selectReplyList(int replyCommentNo) {
		return crrepo.selectReplyList(replyCommentNo);
	}
	// 댓글 달기 기능 map으로 데이터 받음.댓글내용,게시글번호,작성자
	@Override
	public int insertReply(String replyContent, int replyCommentNo, String userId) {
		return crrepo.insertReply(replyContent, replyCommentNo, userId);
	}
	// 댓글 삭제 기능 번호로
	@Override
	public int deleteReply(int replyNo) {
		return crrepo.deleteReply(replyNo);
	}

}
