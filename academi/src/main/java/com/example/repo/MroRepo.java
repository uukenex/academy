package com.example.repo;

import java.util.List;

import com.example.dto.Mro;

public interface MroRepo {
	public int countUpdateDong(String city, String siGu, String dong);
	
	public int countUpdateSiGu(String city, String siGu);
	
	public int countUpdateCity(String city);
	
	/** 도 전체 받아옴 **/
	public List<Mro> selectDo();
	
	/** 핫플레이스 도지도 **/
	public List<Mro> hotplaceDo();
	/** 핫플레이스 경기 **/
	public List<Mro> selectGunggi();
	/** 핫플레이스 강원 **/
	public List<Mro> selectGangwon();
	/** 핫플레이스 충북 **/
	public List<Mro> selectChungbuk();
	/** 핫플레이스 충남 **/
	public List<Mro> selectChungnam();
	/** 핫플레이스 경북 **/
	public List<Mro> selectKungbuk();
	/** 핫플레이스 경남 **/
	public List<Mro> selectKungnam();
	/** 핫플레이스 전북 **/
	public List<Mro> selectJunbuk();
	/** 핫플레이스 전남 **/
	public List<Mro> selectJunnam();
	/** 핫플레이스 제주 **/
	public List<Mro> selectJeju();
}
