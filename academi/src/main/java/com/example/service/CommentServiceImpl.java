package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.Comments;
import com.example.repo.CommentRepo;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	CommentRepo crepo;
	// 단일 게시글 보기
	@Override
	public Comments selectComment(int commentNo) {
		return crepo.selectComment(commentNo);
	}

	// 게시글 쓰기(공지사항)
	@Override
	public int writeNoticeComment(String commentName, String commentContent,String userId) {
		return crepo.insertComment("공지사항", commentName, commentContent, userId);
	}

	// 게시글 쓰기(자유게시판)
	@Override
	public int writeFreeComment(String commentName, String commentContent, String userId) {
		return crepo.insertComment("자유게시판", commentName, commentContent, userId);
	}

	// 게시글 수정
	@Override
	public int updateComment(int commentNo, String commentName, String commentContent) {
		return crepo.updateComment(commentNo, commentName, commentContent);
	}

	// 게시글 삭제 --댓글까지 지워야함
	@Override
	public int deleteComment(int commentNo) {
		return crepo.deleteComment(commentNo);
	}

	// 페이지당 리스트를 보여줌(공지사항)
	@Override
	public List<Comments> noticeListByPage(int page) {
		return crepo.getCommentByPage("공지사항", page);
	}

	// 페이지당 리스트를 보여줌(자유게시판)
	@Override
	public List<Comments> freeListByPage(int page) {
		return crepo.getCommentByPage("자유게시판", page);
	}

}
