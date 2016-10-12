package com.example.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * qna게시판 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Qna implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** qna_번호. */
	private Integer qnaNo;

	/** qna_제목. */
	private String qnaTitle;

	/** qna_내용. */
	private String qnaQuestion;

	private Date qnaDate;
	private Integer qnaCount;
	/** 사용자. */
	private String userId;

	private Users users;

	public Qna(Integer qnaNo, String qnaTitle, String qnaQuestion, Date qnaDate, Integer qnaCount, String userId) {
		super();
		this.qnaNo = qnaNo;
		this.qnaTitle = qnaTitle;
		this.qnaQuestion = qnaQuestion;
		this.qnaDate = qnaDate;
		this.qnaCount = qnaCount;
		this.userId = userId;
	}
	
	
}
