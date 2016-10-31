package com.example.service;

import java.util.List;

import com.example.dto.Mro;

public interface MroService {

	public int updateCnt(String city, String siGu);
	
	public List<Mro> doHotplace();
	
	public List<Mro> selectDo();
	
}
