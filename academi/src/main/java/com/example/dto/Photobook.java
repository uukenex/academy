package com.example.dto;

import java.io.Serializable;

/**
 * 포토북 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Photobook implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 포토북_공유한폴더. */
	private String photoShare;

	/** 포토북_공유받은폴더. */
	private String photoShared;

	/** 사용자. */
	private Users users;

	/** 포토북_공유자1. */
	private String photoShareId1;

	/** 포토북_공유자2. */
	private String photoShareId2;

	/** 포토북_공유자3. */
	private String photoShareId3;

	/** 포토북_공유자4. */
	private String photoShareId4;

	/**
	 * 생성자.
	 */
	public Photobook() {
	}

	/**
	 * 포토북_공유한폴더을 설정합니다..
	 * 
	 * @param photoShare
	 *            포토북_공유한폴더
	 */
	public void setPhotoShare(String photoShare) {
		this.photoShare = photoShare;
	}

	/**
	 * 포토북_공유한폴더을 가져옵니다..
	 * 
	 * @return 포토북_공유한폴더
	 */
	public String getPhotoShare() {
		return this.photoShare;
	}

	/**
	 * 포토북_공유받은폴더을 설정합니다..
	 * 
	 * @param photoShared
	 *            포토북_공유받은폴더
	 */
	public void setPhotoShared(String photoShared) {
		this.photoShared = photoShared;
	}

	/**
	 * 포토북_공유받은폴더을 가져옵니다..
	 * 
	 * @return 포토북_공유받은폴더
	 */
	public String getPhotoShared() {
		return this.photoShared;
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
	 * 포토북_공유자1을 설정합니다..
	 * 
	 * @param photoShareId1
	 *            포토북_공유자1
	 */
	public void setPhotoShareId1(String photoShareId1) {
		this.photoShareId1 = photoShareId1;
	}

	/**
	 * 포토북_공유자1을 가져옵니다..
	 * 
	 * @return 포토북_공유자1
	 */
	public String getPhotoShareId1() {
		return this.photoShareId1;
	}

	/**
	 * 포토북_공유자2을 설정합니다..
	 * 
	 * @param photoShareId2
	 *            포토북_공유자2
	 */
	public void setPhotoShareId2(String photoShareId2) {
		this.photoShareId2 = photoShareId2;
	}

	/**
	 * 포토북_공유자2을 가져옵니다..
	 * 
	 * @return 포토북_공유자2
	 */
	public String getPhotoShareId2() {
		return this.photoShareId2;
	}

	/**
	 * 포토북_공유자3을 설정합니다..
	 * 
	 * @param photoShareId3
	 *            포토북_공유자3
	 */
	public void setPhotoShareId3(String photoShareId3) {
		this.photoShareId3 = photoShareId3;
	}

	/**
	 * 포토북_공유자3을 가져옵니다..
	 * 
	 * @return 포토북_공유자3
	 */
	public String getPhotoShareId3() {
		return this.photoShareId3;
	}

	/**
	 * 포토북_공유자4을 설정합니다..
	 * 
	 * @param photoShareId4
	 *            포토북_공유자4
	 */
	public void setPhotoShareId4(String photoShareId4) {
		this.photoShareId4 = photoShareId4;
	}

	/**
	 * 포토북_공유자4을 가져옵니다..
	 * 
	 * @return 포토북_공유자4
	 */
	public String getPhotoShareId4() {
		return this.photoShareId4;
	}


}
