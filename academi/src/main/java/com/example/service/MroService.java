package com.example.service;

import java.util.List;

import com.example.dto.Mro;

public interface MroService {

	public int updateCnt(String city, String siGu);
	
	public List<Mro> doHotplace();
	
	public List<Mro> selectDo();
	
	/** 핫플레이스 강원 **/
	public List<Mro> selectGangwon();
	/** 핫플레이스 충북 **/
	public List<Mro> selectChungbuk();
	/** 핫플레이스 충남 **/
	public List<Mro> selectChungnam();
	/** 핫플레이스 경기 **/
	public List<Mro> selectGunggi();
	/** 핫플레이스 제주 **/
	public List<Mro> selectJeju();
	/** 핫플레이스 전북 **/
	public List<Mro> selectJunbuk();
	/** 핫플레이스 전남 **/
	public List<Mro> selectJunnam();
	/** 핫플레이스 경북 **/
	public List<Mro> selectKungbuk();
	/** 핫플레이스 경남 **/
	public List<Mro> selectKungnam();
}

