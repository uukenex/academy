package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dto.Mro;
import com.example.repo.MroRepo;

@Service
public class MroServiceImpl implements MroService {
	@Autowired
	MroRepo mrepo;
	
	@Transactional
	@Override
	public int updateCnt(String city, String siGu) {
		// TODO Auto-generated method stub
		int result = mrepo.countUpdateSiGu(city, siGu);
		result = mrepo.countUpdateCity(city);
		return result;
	}

	@Override
	public List<Mro> doHotplace() {
		// TODO Auto-generated method stub
		List<Mro> hot = mrepo.hotplaceDo();
		return hot;
	}

	@Override
	public List<Mro> selectDo() {
		// TODO Auto-generated method stub
		List<Mro> doList = mrepo.selectDo();
		return doList;
	}
	/** 핫플레이스 강원 **/
	@Override
	public List<Mro> selectGangwon() {
		// TODO Auto-generated method stub
		List<Mro> selectGangwon = mrepo.selectGangwon();
		return selectGangwon;
	}
	/** 핫플레이스 충북 **/
	@Override
	public List<Mro> selectChungbuk() {
		// TODO Auto-generated method stub
		List<Mro> selectChungbuk = mrepo.selectChungbuk();
		return selectChungbuk;
	}
	/** 핫플레이스 충남 **/
	@Override
	public List<Mro> selectChungnam() {
		// TODO Auto-generated method stub
		List<Mro> selectChungnam = mrepo.selectChungnam();
		return selectChungnam;
	}
	
	/** 핫플레이스 경기 **/
	@Override
	public List<Mro> selectGunggi() {
		// TODO Auto-generated method stub
		List<Mro> selectGunggi = mrepo.selectGunggi();
		return selectGunggi;
	}
	/** 핫플레이스 제주 **/
	@Override
	public List<Mro> selectJeju() {
		// TODO Auto-generated method stub
		List<Mro> selectJeju = mrepo.selectJeju();
		return selectJeju;
	}
	/** 핫플레이스 전북 **/
	@Override
	public List<Mro> selectJunbuk() {
		// TODO Auto-generated method stub
		List<Mro> selectJunbuk = mrepo.selectJunbuk();
		return selectJunbuk;
	}
	/** 핫플레이스 전남 **/
	@Override
	public List<Mro> selectJunnam() {
		// TODO Auto-generated method stub
		List<Mro> selectJunnam = mrepo.selectJunnam();
		return selectJunnam;
	}
	/** 핫플레이스 경북 **/
	@Override
	public List<Mro> selectKungbuk() {
		// TODO Auto-generated method stub
		List<Mro> selectKungbuk = mrepo.selectKungbuk();
		return selectKungbuk;
	}
	/** 핫플레이스 경남 **/
	@Override
	public List<Mro> selectKungnam() {
		// TODO Auto-generated method stub
		List<Mro> selectKungnam = mrepo.selectKungnam();
		return selectKungnam;
	}

}
