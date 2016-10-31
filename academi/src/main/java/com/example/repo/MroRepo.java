package com.example.repo;

import java.util.List;

import com.example.dto.Mro;

public interface MroRepo {
	public int countUpdateDong(String city, String siGu, String dong);
	
	public int countUpdateSiGu(String city, String siGu);
	
	public int countUpdateCity(String city);
	
	public List<Mro> hotplaceDo();
	
	public List<Mro> selectDo();
}
