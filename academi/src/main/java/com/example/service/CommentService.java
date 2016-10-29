package com.example.service;

import java.util.List;

import com.example.dto.Comments;

public interface CommentService {
	// 분류별 총 게시물 수(공지사항)
	public int noticePageCount();

	// 분류별 총 게시물 수(자유게시판)
	public int freePageCount();

	// 카운트 올리기
	public int count(int commentNo);

	// 단일 게시글 보기
	public Comments selectComment(int commentNo);

	// 게시글 쓰기(공지사항)
	public int writeNoticeComment(String commentName, String commentContent, String userId);

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

	// 이름검색 리스트를 페이지별로 보여줌(공지사항)
	public List<Comments> noticeSearchListByPage(String commentName, int page);

	// 이름검색 리스트를 페이지별로 보여줌(자유게시판)
	public List<Comments> freeSearchListByPage(String commentName, int page);

	// 내용검색으로 리스트를 페이지별로 보여줌(공지사항)
	public List<Comments> noticeSearchContentListByPage(String commentContent, int page);

	// 내용검색으로 리스트를 페이지별로 보여줌(자유게시판)
	public List<Comments> freeSearchContentListByPage(String commentContent, int page);

	// 닉네임검색으로 리스트를 페이지별로 보여줌(공지사항)
	public List<Comments> noticeSearchNickListByPage(String userNick, int page);

	// 닉네임검색으로 리스트를 페이지별로 보여줌(자유게시판)
	public List<Comments> freeSearchNickListByPage(String userNick, int page);
	
	//가장 최신의 글번호를 가져옴
	public int currentNo();
}
