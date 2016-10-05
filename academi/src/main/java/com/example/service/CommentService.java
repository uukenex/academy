package com.example.service;

import java.util.List;

import com.example.dto.Comments;

public interface CommentService {
	// 단일 게시글 보기
	public Comments selectComment(int commentNo);

	// 게시글 쓰기(공지사항)
	public int writeNoticeComment(String commentName, String commentContent,String userId);

	// 게시글 쓰기(자유게시판)
	public int writeFreeComment(String commentName, String commentContent, String userId);

	// 게시글 수정
	public int updateComment(int commentNo, String commentName, String commentContent);
	
	// 게시글 삭제 --댓글까지 지워야함
	public int deleteComment(int commentNo);
	
	// 페이지당 리스트를 보여줌(공지사항)
	public List<Comments> noticeListByPage(int page);
	// 페이지당 리스트를 보여줌(자유게시판)
	public List<Comments> freeListByPage(int page);
}
