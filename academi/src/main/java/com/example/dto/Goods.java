package com.example.dto;

import lombok.Data;

//* 장바구니에 담길 상품
 
@Data
public class Goods {
	private String address_name;  //상품명
	private double x_coordinate;    //개수
	private double y_coordinate;  //가격
	private String address; //주소

}