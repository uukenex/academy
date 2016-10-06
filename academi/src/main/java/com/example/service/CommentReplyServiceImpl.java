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

	@Override
	public List<CommentReply> selectReplyList(int replyCommentNo) {
		return crrepo.selectReplyList(replyCommentNo);
	}

	@Override
	public int insertReply(String replyContent, int replyCommentNo, String userId) {
		return crrepo.insertReply(replyContent, replyCommentNo, userId);
	}

	@Override
	public int deleteReply(int replyNo) {
		return crrepo.deleteReply(replyNo);
	}

}
