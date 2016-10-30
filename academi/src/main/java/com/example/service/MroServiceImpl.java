package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

}
