package com.example.repo;

public interface MroRepo {
	public int countUpdateDong(String city, String siGu, String dong);
	
	public int countUpdateSiGu(String city, String siGu);
	
	public int countUpdateCity(String city);
}
