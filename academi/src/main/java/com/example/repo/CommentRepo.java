package com.example.repo;

import java.util.List;
import java.util.Map;

import com.example.dto.Comments;

public interface CommentRepo {
	/**
	 * 한페이지에 출력될 게시글 수
	 */
	int COMMENT_PER_PAGE = 10;

	// 단일 게시글 보기
	public Comments selectComment(int commentNo);

	// 게시글 쓰기(공지사항은 관리자만 작성가능)
	public int insertComment(String commentCategory, String commentName, String commentContent, String userId);

	// 게시글 수정(작성자만 가능)
	public int updateComment(int commentNo, String commentName, String commentContent);

	// 게시글 삭제(작성자만 가능)
	public int deleteComment(int commentNo);

	// 페이지당 리스트를 보여줌 분류별로 있어야함
	public List<Comments> getCommentByPage(String commentCategory, int page);

	// 이름검색 페이지당 리스트를 보여줌
	public List<Comments> searchCommentByNameOfPage(String commentName,String commentCategory, int page);

}
