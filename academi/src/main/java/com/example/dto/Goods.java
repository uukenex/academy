package com.example.dto;

//* 장바구니에 담길 상품
 

public class Goods {
	private String title;  //상품명
	private double latitude;    //개수
	private double longitude;  //가격
	private String address; //주소
	private String imageUrl;
	private String category;
	
	public Goods() {
	}
	public Goods(String title,double latitude,double longitude,String address, String imageUrl,String category) {
		this.title = title;
		this.latitude = latitude;
		this.longitude = longitude;
		this.address = address;
		this.imageUrl = imageUrl;
		this.category = category;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	
}