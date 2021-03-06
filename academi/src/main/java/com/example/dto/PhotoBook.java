package com.example.dto;

import java.io.Serializable;

/**
 * 포토북 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class PhotoBook implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 포토북_공유한폴더. */
	private String photoFolderName;

	/** 사용자. */
	private String userId;

	/** 포토북_공유자1. */
	private String photoShareId1;

	/** 포토북_공유자2. */
	private String photoShareId2;

	/** 포토북_공유자3. */
	private String photoShareId3;

	/** 포토북_공유자4. */
	private String photoShareId4;

	private Users users;
	
	
	
	public PhotoBook() {
	}
	public PhotoBook(String photoFolderName, String userId, String photoShareId1, String photoShareId2,
			String photoShareId3, String photoShareId4) {
		super();
		this.photoFolderName = photoFolderName;
		this.userId = userId;
		this.photoShareId1 = photoShareId1;
		this.photoShareId2 = photoShareId2;
		this.photoShareId3 = photoShareId3;
		this.photoShareId4 = photoShareId4;
	}
	public String getPhotoFolderName() {
		return photoFolderName;
	}
	public void setPhotoFolderName(String photoFolderName) {
		this.photoFolderName = photoFolderName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPhotoShareId1() {
		return photoShareId1;
	}
	public void setPhotoShareId1(String photoShareId1) {
		this.photoShareId1 = photoShareId1;
	}
	public String getPhotoShareId2() {
		return photoShareId2;
	}
	public void setPhotoShareId2(String photoShareId2) {
		this.photoShareId2 = photoShareId2;
	}
	public String getPhotoShareId3() {
		return photoShareId3;
	}
	public void setPhotoShareId3(String photoShareId3) {
		this.photoShareId3 = photoShareId3;
	}
	public String getPhotoShareId4() {
		return photoShareId4;
	}
	public void setPhotoShareId4(String photoShareId4) {
		this.photoShareId4 = photoShareId4;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	
	

}
