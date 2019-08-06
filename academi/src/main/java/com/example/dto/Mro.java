package com.example.dto;

/**
 * 지역 명,시군구,동 좌표값 및 카운트 
 */

public class Mro {
	
	/**지역 아이디**/
	private String regionId;
	
	/**도/광역시/특별시**/
	private String city;
	
	/**시/구**/
	private String siGu;
	
	/**동**/
	private String dong;
	
	/**위도**/
	private String rageX;
	
	/**경도**/
	private String rageY;
	
	/**추가날짜**/
	private String regTm;
	
	/**후기에 올라온 지역 카운트**/
	private Integer cnt;

	public Mro(){
		
	}
	
	public Mro(String regionId, String city, String siGu, String dong,
			String rageX, String rageY, String regTm, Integer cnt) {
		super();
		this.regionId = regionId;
		this.city = city;
		this.siGu = siGu;
		this.dong = dong;
		this.rageX = rageX;
		this.rageY = rageY;
		this.regTm = regTm;
		this.cnt = cnt;
	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSiGu() {
		return siGu;
	}

	public void setSiGu(String siGu) {
		this.siGu = siGu;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getRageX() {
		return rageX;
	}

	public void setRageX(String rageX) {
		this.rageX = rageX;
	}

	public String getRageY() {
		return rageY;
	}

	public void setRageY(String rageY) {
		this.rageY = rageY;
	}

	public String getRegTm() {
		return regTm;
	}

	public void setRegTm(String regTm) {
		this.regTm = regTm;
	}

	public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	

}
