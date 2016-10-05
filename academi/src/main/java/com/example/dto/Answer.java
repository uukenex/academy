package com.example.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 답변 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Answer implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** qna_답변번호. */
	private Integer answerNo;

	/** qna_답변내용. */
	private String answerContent;

	private Date answerDate;
	/** qna게시판. */
	private Qna qna;

	/** 사용자. */
	private String userId;

}
