package com.example.academi.repo;

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
		int routeNo=102;
		Route result = rs.selectRouteByNo(routeNo);
		String str3 = result.getRouteFull();
		int count4 = 0;
		for (int c = 0; c < str3.length(); c++) {
			if (str3.charAt(c) == '♬') {
				count4++;
			}
		}
		int i = count4 / 5;

		String Addr[] = new String[i];

		
		i=0;
		
		StringTokenizer tokens = new StringTokenizer(str3, "♬");
		while (tokens.hasMoreTokens()) {
			tokens.nextToken();
			tokens.nextToken();
			tokens.nextToken();
			Addr[i] = tokens.nextToken();
			tokens.nextToken();
			i++;

		}
		System.out.println("완성본::::");		
		
		
		
		for(int y=0;y<i;y++){
			String str = Addr[y];
		
		String city;
		String siGu;
		String siGu2;
		
		
		List<Integer> pos = new ArrayList<>();
		int count = 0;
		for (int c = 0; c < str.length(); c++) {
			if (str.charAt(c) == ' ') {
				pos.add(count);
			}
			count++;
		}

		
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
			
			String frontGu=siGu2.substring(0, guPoint);
			String afterGu=siGu2.substring(guPoint);
			afterGu = afterGu.replaceAll(" ", "");
			afterGu = afterGu.replaceAll("-", "");
			afterGu = afterGu.replaceAll("^구[가-힣0-9]{0,20}", "구");
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
		
		
		System.out.println(city+"\t"+siGu+"\t"+siGu2);
		
		}
		
		
		//mrepo.countUpdateSiGu(city, siGu);
		//mrepo.countUpdateCity(city);
	}

}