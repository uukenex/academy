package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dto.Comments;
import com.example.repo.CommentReplyRepo;
import com.example.repo.CommentRepo;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	CommentRepo crepo;
	@Autowired
	CommentReplyRepo crrepo;

	public int count(int commentNo){
	return crepo.updateCommentCount(commentNo);
	}
	// 단일 게시글 보기
	@Override
	public Comments selectComment(int commentNo) {
		
		return crepo.selectComment(commentNo);
	}

	// 게시글 쓰기(공지사항)
	@Override
	public int writeNoticeComment(String commentName, String commentContent, String userId) {
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
	@Transactional
	public int deleteComment(int commentNo) {
		int result = crrepo.deleteReplyByCommentNo(commentNo);
		result = crepo.deleteComment(commentNo);
		return result;
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

	// 이름검색 리스트를 페이지별로 보여줌(공지사항)
	@Override
	public List<Comments> noticeSearchListByPage(String commentName, int page) {
		return crepo.searchCommentByNameOfPage(commentName, "공지사항", page);
	}

	// 이름검색 리스트를 페이지별로 보여줌(자유게시판)
	@Override
	public List<Comments> freeSearchListByPage(String commentName, int page) {
		return crepo.searchCommentByNameOfPage(commentName, "자유게시판", page);
	}

	// 내용검색으로 리스트를 페이지별로 보여줌(공지)
	@Override
	public List<Comments> noticeSearchContentListByPage(String commentContent, int page) {
		return crepo.searchCommentByContentOfPage(commentContent, "공지사항", page);
	}

	// 내용검색으로 리스트를 페이지별로 보여줌(자유게시판)
	@Override
	public List<Comments> freeSearchContentListByPage(String commentContent, int page) {
		return crepo.searchCommentByContentOfPage(commentContent, "자유게시판", page);
	}

	// 닉네임검색으로 리스트를 페이지별로 보여줌(공지)
	@Override
	public List<Comments> noticeSearchNickListByPage(String userNick, int page) {
		return crepo.searchCommentByNickOfPage(userNick, "공지사항", page);
	}

	// 닉네임검색으로 리스트를 페이지별로 보여줌(자유게시판)
	@Override
	public List<Comments> freeSearchNickListByPage(String userNick, int page) {
		return crepo.searchCommentByNickOfPage(userNick, "자유게시판", page);
	}
	@Override
	public int noticePageCount() {
		// TODO Auto-generated method stub
		return crepo.pageCount("공지사항");
	}
	@Override
	public int freePageCount() {
		// TODO Auto-generated method stub
		return crepo.pageCount("자유게시판");
	}

}
