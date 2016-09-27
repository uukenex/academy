package com.example.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 게시글 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Comments implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 게시글_번호. */
	private Integer commentNo;

	/** 게시글_분류. */
	private String commentCategory;

	/** 게시글_이름. */
	private String commentName;

	/** 게시글_내용. */
	private String commentContent;

	/** 게시글_날짜. */
	private Date commentDate;

	/** 사용자. */
	private Users users;

	/** 게시글_댓글 목록. */
	private Set<CommentReply> commentReplySet;

	/**
	 * 생성자.
	 */
	public Comments() {
		this.commentReplySet = new HashSet<CommentReply>();
	}

	/**
	 * 게시글_번호을 설정합니다..
	 * 
	 * @param commentNo
	 *            게시글_번호
	 */
	public void setCommentNo(Integer commentNo) {
		this.commentNo = commentNo;
	}

	/**
	 * 게시글_번호을 가져옵니다..
	 * 
	 * @return 게시글_번호
	 */
	public Integer getCommentNo() {
		return this.commentNo;
	}

	/**
	 * 게시글_분류을 설정합니다..
	 * 
	 * @param commentCategory
	 *            게시글_분류
	 */
	public void setCommentCategory(String commentCategory) {
		this.commentCategory = commentCategory;
	}

	/**
	 * 게시글_분류을 가져옵니다..
	 * 
	 * @return 게시글_분류
	 */
	public String getCommentCategory() {
		return this.commentCategory;
	}

	/**
	 * 게시글_이름을 설정합니다..
	 * 
	 * @param commentName
	 *            게시글_이름
	 */
	public void setCommentName(String commentName) {
		this.commentName = commentName;
	}

	/**
	 * 게시글_이름을 가져옵니다..
	 * 
	 * @return 게시글_이름
	 */
	public String getCommentName() {
		return this.commentName;
	}

	/**
	 * 게시글_내용을 설정합니다..
	 * 
	 * @param commentContent
	 *            게시글_내용
	 */
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	/**
	 * 게시글_내용을 가져옵니다..
	 * 
	 * @return 게시글_내용
	 */
	public String getCommentContent() {
		return this.commentContent;
	}

	/**
	 * 게시글_날짜을 설정합니다..
	 * 
	 * @param commentDate
	 *            게시글_날짜
	 */
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	/**
	 * 게시글_날짜을 가져옵니다..
	 * 
	 * @return 게시글_날짜
	 */
	public Date getCommentDate() {
		return this.commentDate;
	}

	/**
	 * 사용자을 설정합니다..
	 * 
	 * @param users
	 *            사용자
	 */
	public void setUsers(Users users) {
		this.users = users;
	}

	/**
	 * 사용자을 가져옵니다..
	 * 
	 * @return 사용자
	 */
	public Users getUsers() {
		return this.users;
	}

	/**
	 * 게시글_댓글 목록을 설정합니다..
	 * 
	 * @param commentReplySet
	 *            게시글_댓글 목록
	 */
	public void setCommentReplySet(Set<CommentReply> commentReplySet) {
		this.commentReplySet = commentReplySet;
	}

	/**
	 * 게시글_댓글를 추가합니다..
	 * 
	 * @param commentReply
	 *            게시글_댓글
	 */
	public void addCommentReply(CommentReply commentReply) {
		this.commentReplySet.add(commentReply);
	}

	/**
	 * 게시글_댓글 목록을 가져옵니다..
	 * 
	 * @return 게시글_댓글 목록
	 */
	public Set<CommentReply> getCommentReplySet() {
		return this.commentReplySet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentNo == null) ? 0 : commentNo.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Comments other = (Comments) obj;
		if (commentNo == null) {
			if (other.commentNo != null) {
				return false;
			}
		} else if (!commentNo.equals(other.commentNo)) {
			return false;
		}
		return true;
	}

}
