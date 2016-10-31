package com.example.dto;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 지역 명,시군구,동 좌표값 및 카운트 
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
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
	

}
