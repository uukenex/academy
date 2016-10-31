package com.example.academi.repo;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.example.config.ApplicationConfig;
import com.example.dto.Route;
import com.example.repo.MroRepo;
import com.example.service.RouteService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class MroRepoTest {
	static Logger logger = LoggerFactory.getLogger(MroRepoTest.class);

	@Autowired
	SqlSessionTemplate template;
	@Autowired
	MroRepo mrepo;
@Autowired
RouteService rs;
/*	// 답글쓰기 테스트
	@Transactional
	@Test
	public void insertTest() {
		String city = "인천";
		String siGu = "부평구";
		String dong = "삼산동";
		mrepo.countUpdateDong(city, siGu, dong);
		mrepo.countUpdateSiGu(city, siGu);
		mrepo.countUpdateCity(city);
	}
*/
	@Transactional
	@Test
	public void asdasdest() {
		//루트를 받아와서
		int routeNo=102;
		//루트 no를 통해 루트의 정보를 가져온다
		Route result = rs.selectRouteByNo(routeNo);
		//루트 전체를  str3에 담아주고 
		String str3 = result.getRouteFull();
		int count4 = 0;
		//str3의 길이만큼 반복되는데
		System.out.println("str3 : " + str3);
		for (int c = 0; c < str3.length(); c++) {
			//♬가 나올때마다 카운트를 해준다
			if (str3.charAt(c) == '♬') {
				count4++;
			}
		}
		
		//♬가 5개가 경로 1개이므로 5로 나누어준다.
		int i = count4 / 5;

		//addr에 경로 갯수만큼 배열의 크기를 넣어주고
		String Addr[] = new String[i];

		
		i=0;
		
		//토큰을 생성해서 넘겨준다
		StringTokenizer tokens = new StringTokenizer(str3, "♬");
		while (tokens.hasMoreTokens()) {
			tokens.nextToken();
			tokens.nextToken();
			tokens.nextToken();
			//주소 값이 들어가있는 곳에서 주소배열에 값을 넣어준다
			Addr[i] = tokens.nextToken();
			tokens.nextToken();
			i++;

		}
		System.out.println("완성본::::");		
		
		
		
		for(int y=0;y<i;y++){
			String str = Addr[y];
		
		//도 or 광역시 변수
		String city;
		//도의 시 혹은 광역시의 구
		String siGu;
		//도의 구
		String siGu2;
		
		//리스트를 만들어준다 -> 띄어쓰기를 할때마다 그 숫자를 리스트에 넣어줌
		List<Integer> pos = new ArrayList<>();
		int count = 0;
		for (int c = 0; c < str.length(); c++) {
			if (str.charAt(c) == ' ') {
				pos.add(count);
			}
			count++;
		}

		
		//공백 제거
		city=str.substring(0, pos.get(0)).trim();
		siGu=str.substring(pos.get(0),pos.get(1)).trim();
		siGu2=str.substring(pos.get(1),str.length()).trim();
		
		if(siGu.equals("수영구")||siGu.equals("영도구")||siGu.equals("도봉구")||siGu.equals("동대문구")
			||siGu.equals("성북구")||siGu.equals("동구")||siGu.equals("남구")||siGu.equals("달서구")
			||siGu.equals("서대문구")||siGu.equals("성동구")||siGu.equals("중랑구")||siGu.equals("남동구")
			||siGu.equals("광산구")||siGu.equals("서구")||siGu.equals("동래구")||siGu.equals("강북구")
			||siGu.equals("마포구")||siGu.equals("영등포구")||siGu.equals("구례군")||siGu.equals("중구")
			||siGu.equals("강서구")||siGu.equals("사상구")||siGu.equals("관악구")||siGu.equals("구로구")
			||siGu.equals("동작구")||siGu.equals("수성구")||siGu.equals("유성구")||siGu.equals("부산진구")
			||siGu.equals("노원구")||siGu.equals("송파구")||siGu.equals("구미시")||siGu.equals("북구")
			||siGu.equals("금정구")||siGu.equals("사하구")||siGu.equals("연제구")||siGu.equals("해운대구")
			||siGu.equals("강남구")||siGu.equals("양천구")||siGu.equals("은평구")||siGu.equals("부평구")
			||siGu.equals("양구군")||siGu.equals("대덕구")||siGu.equals("강동구")||siGu.equals("광진구")
			||siGu.equals("금천구")||siGu.equals("서초구")||siGu.equals("용산구")||siGu.equals("종로구")
			||siGu.equals("계양구")||siGu.equals("연수구")||siGu.equals("구리시"))
		siGu2="";
		//
		else if(siGu.equals("전주시")||siGu.equals("고양시")||siGu.equals("부천시")||siGu.equals("용인시")
				||siGu.equals("청주시")||siGu.equals("수원시")||siGu.equals("창원시")||siGu.equals("안양시")
				||siGu.equals("성남시")||siGu.equals("천안시")||siGu.equals("포항시")||siGu.equals("수원시")
				||siGu.equals("청주시")||siGu.equals("안산시"))
		{
			
			int ccc=0;
			int guPoint=0;
			for (int c = 0; c < siGu2.length(); c++) {
				if (siGu2.charAt(c) == '구') {
					guPoint=ccc;
				}
				ccc++;			
				
			}
			
			//구의 앞 글자
			String frontGu=siGu2.substring(0, guPoint);
			//구의 뒷 글자 -> 제거해주기 위햐여
			String afterGu=siGu2.substring(guPoint);
			
			//구의 뒤글자들을 모두 제거해줌
			afterGu = afterGu.replaceAll(" ", "");
			afterGu = afterGu.replaceAll("-", "");
			afterGu = afterGu.replaceAll("^구[가-힣0-9]{0,20}", "구");
			
			//구의 앞글자와 구를 합쳐 정상적인 구로 만들어줌
			siGu2=frontGu+afterGu;
			
			
			if(siGu2.equals("완산구")||siGu2.equals("덕양구")||siGu2.equals("소사구")||siGu2.equals("처인구")
				||siGu2.equals("상당구")||siGu2.equals("팔달구")||siGu2.equals("진해구")||siGu2.equals("남구")
				||siGu2.equals("북구")||siGu2.equals("원미구")||siGu2.equals("동남구")||siGu2.equals("일산서구")
				||siGu2.equals("권선구")||siGu2.equals("만안구")||siGu2.equals("성산구")||siGu2.equals("의창구")
				||siGu2.equals("흥덕구")||siGu2.equals("오정구")||siGu2.equals("장안구")||siGu2.equals("동안구")
				||siGu2.equals("마산회원구")||siGu2.equals("단원구")||siGu2.equals("상록구")||siGu2.equals("마산합포구")
				||siGu2.equals("일산동구")||siGu2.equals("수정구")||siGu2.equals("중원구")||siGu2.equals("영통구")
				||siGu2.equals("기흥구")||siGu2.equals("덕진구")||siGu2.equals("서북구")||siGu2.equals("분당구")
				||siGu2.equals("수지구")){
			}
			else{
				System.out.println("버그"+siGu2);
				siGu2="";
			}
		}
		String fullSiGu = siGu+" "+siGu2;
		fullSiGu = fullSiGu.trim();
		
		logger.trace("시/도 :{}", city);
		logger.trace("구 :{}", fullSiGu);
/*		System.out.println(city+"\t"+siGu+"\t"+siGu2);*/
		
		mrepo.countUpdateSiGu(city, fullSiGu);
		mrepo.countUpdateCity(city);
		}
		

	}
	
	@Test
	public void hotplaceDo1(){
		mrepo.hotplaceDo();
	}
	
	@Test
	public void doSelect(){
		mrepo.selectDo();
	}
	
}