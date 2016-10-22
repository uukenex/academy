package com.example.dto;

import lombok.Data;

//* 장바구니에 담길 상품
 
@Data
public class Goods {
	private String title;  //상품명
	private double latitude;    //개수
	private double longitude;  //가격
	private String address; //주소
	private String imageUrl;
	private String category;

}