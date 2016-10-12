package com.example.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 게시글_댓글 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentReply implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 댓글_번호. */
	private Integer replyNo;

	/** 댓글_내용. */
	private String replyContent;

	/** 댓글_날짜. */
	private Date replyDate;

	/** 게시글. */
	private Integer replyCommentNo;

	/** 사용자. */
	private String userId;

	private Users users;

	public CommentReply(Integer replyNo, String replyContent, Date replyDate, Integer replyCommentNo, String userId) {
		super();
		this.replyNo = replyNo;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.replyCommentNo = replyCommentNo;
		this.userId = userId;
	}
	
	
}
