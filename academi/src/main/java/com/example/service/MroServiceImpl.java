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

}
