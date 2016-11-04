package com.example.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.example.dto.Goods;
import com.example.dto.Mro;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.service.MroService;
import com.example.service.RouteService;
import com.example.service.UserService;

@SessionAttributes({ "cart", "dbcart" })
@Controller
public class MapAPIController {
	static Logger logger = LoggerFactory.getLogger(MapAPIController.class);

	@Autowired
	UserService us;
	@Autowired
	RouteService rs;
	@Autowired
	MroService ms;
	
	//지도 좌표 받아오고 해당지역 불러오기
	@RequestMapping(value = "/latlng", method = RequestMethod.GET)
	public String latlng(Model model, HttpServletRequest request) {
		String lat = request.getParameter("lat");
		String lng = request.getParameter("lng");
		logger.trace("lat : {}", lat);
		logger.trace("lng : {}", lng);
		request.setAttribute("lat", lat);
		request.setAttribute("lng", lng);
		
		model.addAttribute("lat",lat);
		model.addAttribute("lng",lng);
		return "session/guide/map_api";
	}

	@RequestMapping(value = "/domap", method = RequestMethod.GET)
	public String what(Model model) {
		List<Mro> hotplace = ms.doHotplace();
		String firstDo = "";
		String secondDo = "";
		String thirdDo = "";

		for (int i = 0; i < hotplace.size(); i++) {
			firstDo = hotplace.get(0).getCity();
			secondDo = hotplace.get(1).getCity();
			thirdDo = hotplace.get(2).getCity();
		}

		model.addAttribute("firstDo", firstDo);
		model.addAttribute("secondDo", secondDo);
		model.addAttribute("thirdDo", thirdDo);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/do_map";
	}

	@RequestMapping(value = "/Jeollanamdo", method = RequestMethod.GET)
	public String Jeollanamdo(Model model) {
		List<Mro> hotplace = ms.selectJunnam();
		String first = "";
		String second = "";
		String third = "";

		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(2).getSiGu().length(); j++) {
			if (hotplace.get(2).getSiGu().charAt(j) == ' ') {
				point = cnt;
			}
			cnt++;
		}
		if (point != 0) {
			third = hotplace.get(2).getSiGu().substring(0, point);
		} else {
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/Jeollanam_do";
	}

	@RequestMapping(value = "/Jeollabukdo", method = RequestMethod.GET)
	public String Jeollabukdo(Model model) {
		List<Mro> hotplace = ms.selectJunbuk();
		String first = "";
		String second = "";
		String third = "";
		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(2).getSiGu().length(); j++) {
			if (hotplace.get(2).getSiGu().charAt(j) == ' ') {
				point = cnt;
			}
			cnt++;
		}
		if (point != 0) {
			third = hotplace.get(2).getSiGu().substring(0, point);
		} else {
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/Jeollabuk_do";
	}

	@RequestMapping(value = "/jejudo", method = RequestMethod.GET)
	public String jejudo(Model model) {
		List<Mro> hotplace = ms.selectJeju();
		String first = "";
		String second = "";

		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/jeju_do";
	}

	@RequestMapping(value = "/Gyeongsangnamdo", method = RequestMethod.GET)
	public String Gyeongsangnam_do(Model model) {
		List<Mro> hotplace = ms.selectKungnam();
		String first = "";
		String second = "";
		String third = "";
		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(2).getSiGu().length(); j++) {
			if (hotplace.get(2).getSiGu().charAt(j) == ' ') {
				point = cnt;
			}
			cnt++;
		}
		if (point != 0) {
			third = hotplace.get(2).getSiGu().substring(0, point);
		} else {
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/Gyeongsangnam_do";
	}

	@RequestMapping(value = "/Gyeongsangbukdo", method = RequestMethod.GET)
	public String Gyeongsangbukdo(Model model) {
		List<Mro> hotplace = ms.selectKungbuk();
		String first = "";
		String second = "";
		String third = "";

		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(2).getSiGu().length(); j++) {
			if (hotplace.get(2).getSiGu().charAt(j) == ' ') {
				point = cnt;
			}
			cnt++;
		}
		if (point != 0) {
			third = hotplace.get(2).getSiGu().substring(0, point);
		} else {
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		logger.trace("first:{}, second:{}, third:{}", first, second, third);
		return "session/guide/citymap/Gyeongsangbuk_do";

	}

	@RequestMapping(value = "/gyeonggido", method = RequestMethod.GET)
	public String gyeonggido(Model model) {
		List<Mro> hotplace = ms.selectGunggi();
		String first = "";
		String second = "";
		String third = "";
		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(2).getSiGu().length(); j++) {
			if (hotplace.get(2).getSiGu().charAt(j) == ' ') {
				point = cnt;
			}
			cnt++;
		}
		if (point != 0) {
			third = hotplace.get(2).getSiGu().substring(0, point);
		} else {
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/gyeonggi_do";
	}

	@RequestMapping(value = "/Gangwondo", method = RequestMethod.GET)
	public String Gangwondo(Model model) {
		List<Mro> hotplace = ms.selectGangwon();
		String first = "";
		String second = "";
		String third = "";
		for (int i = 0; i < hotplace.size(); i++) {
			first = hotplace.get(0).getSiGu();
			second = hotplace.get(1).getSiGu();
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/Gangwon_do";
	}

	@RequestMapping(value = "/chungcheongnamdo", method = RequestMethod.GET)
	public String chungcheongnamdo(Model model) {
		List<Mro> hotplace = ms.selectChungnam();
		String first = "";
		String second = "";
		String third = "";
		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(2).getSiGu().length(); j++) {
			if (hotplace.get(2).getSiGu().charAt(j) == ' ') {
				point = cnt;
			}
			cnt++;
		}
		if (point != 0) {
			third = hotplace.get(2).getSiGu().substring(0, point);
		} else {
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/chungcheongnam_do";
	}

	@RequestMapping(value = "/chungcheongbukdo", method = RequestMethod.GET)
	public String chungcheongbukdo(Model model) {
		List<Mro> hotplace = ms.selectChungbuk();
		String first = "";
		String second = "";
		String third = "";
		// point 변수 : 공백 지점을 담아줄 변수
		int point = 0;
		// 공백 지점을 찾아주는 변수
		int cnt = 0;
		// sigu의 길이만큼 증가
		for (int j = 0; j < hotplace.get(0).getSiGu().length(); j++) {
			// 만약 공백이있으면
			if (hotplace.get(0).getSiGu().charAt(j) == ' ') {
				// 포인트에 담아준다.
				point = cnt;
			}
			// cnt를 한개씩 증가시켜주며 글자를 검색해줌
			cnt++;
		}
		// 만약 point에 값이 0이 아니면(공백이 존재)
		if (point != 0) {
			// 변수에 0번째부터 point번째까지 글자를 넣어줌
			first = hotplace.get(0).getSiGu().substring(0, point);
			// 그게아니면
		} else {
			// sigu그 자체를 변수에 담아줌
			first = hotplace.get(0).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(1).getSiGu().length(); j++) {
			if (hotplace.get(1).getSiGu().charAt(j) == ' ') {
				point = cnt;
				logger.trace("Point??:{}", point);
			}
			cnt++;

		}
		if (point != 0) {
			second = hotplace.get(1).getSiGu().substring(0, point);
		} else {
			second = hotplace.get(1).getSiGu();
		}

		cnt = 0;
		point = 0;
		for (int j = 0; j < hotplace.get(2).getSiGu().length(); j++) {
			if (hotplace.get(2).getSiGu().charAt(j) == ' ') {
				point = cnt;
			}
			cnt++;
		}
		if (point != 0) {
			third = hotplace.get(2).getSiGu().substring(0, point);
		} else {
			third = hotplace.get(2).getSiGu();
		}

		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("third", third);
		System.out.println("여기 들어왔어요!!");
		return "session/guide/citymap/chungcheongbuk_do";
	}

	// 지도만들기 - 맵 메인으로 이동하는 페이지
	@RequestMapping("/mapMain")
	public String mapMain(Model model, SessionStatus status) {
		status.setComplete();
		return "redirect:/mapMain2";
	}

	@RequestMapping("/mapMain2")
	public String mapMain2(HttpServletRequest request, Model model, SessionStatus status) {
		Object lat = request.getParameter("lat");
		String lng = request.getParameter("lng");
		logger.trace("lat : {}", lat);
		logger.trace("lng : {}", lng);
		model.addAttribute("lat",lat);
		model.addAttribute("lng",lng);
		return "session/guide/map_main";
	}

	@RequestMapping(value = "/mapapi", method = RequestMethod.GET)
	public String mapapi(SessionStatus status, Model model, HttpServletRequest request, HttpSession session) {
		status.setComplete();

		String local = request.getParameter("incheon");
		model.addAttribute("local", local);

		return "redirect:/session/apiview";
	}

	@ModelAttribute("cart")
	List<Goods> cart() {
		return new ArrayList<Goods>(); // or however you create a default
	}

	@ModelAttribute("dbcart")
	List<Goods> dbcart() {
		return new ArrayList<Goods>(); // or however you create a default
	}

	@RequestMapping(value = "/session/apiview", method = RequestMethod.GET)
	public String apiview(SessionStatus status, Model model, HttpServletRequest request, HttpSession session,
			@ModelAttribute("cart") List<Goods> cart) {

		return "session/guide/map_api";
	}

	/**
	 * 세션에 저장되 있는 cart에 상품을 추가
	 * 
	 * @param goods
	 * @param cart
	 * @return
	 */

	@RequestMapping(value = "/addDB", method = RequestMethod.POST)
	public @ResponseBody Object addDB(@ModelAttribute Goods goods, @ModelAttribute("dbcart") List<Goods> dbcart,
			HttpSession session, Model model) {
		// 이미 같은정보가 저장되있다면 팅겨내야함
		logger.trace("addDB,dbsize:{}", dbcart.size());
		boolean ok = true;
		// 카트에들어있는것을 비교해서 없으면 true를 반환함
		if (dbcart.size() == 0) {
			dbcart.add(goods);
		} else {
			for (int i = 0; i <= dbcart.size() - 1; i++) {
				if (dbcart.get(i).equals(goods)) {
					ok = false;
					break;
				}
			}
			if (ok) {
				dbcart.add(goods);
			}
		}

		logger.trace("카트사이즈 {}", dbcart.size());

		Object obj = session.getAttribute("dbcart");
		return obj;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public @ResponseBody Object add(@ModelAttribute Goods goods, @ModelAttribute("cart") List<Goods> cart,
			HttpSession session, Model model) {

		logger.trace("add");
		// 이미 같은정보가 저장되있다면 팅겨내야함
		boolean ok = true;
		// 카트에들어있는것을 비교해서 없으면 true를 반환함
		if (cart.size() == 0) {
			cart.add(goods);
		} else {
			for (int i = 0; i <= cart.size() - 1; i++) {
				if (cart.get(i).equals(goods)) {
					ok = false;
					break;
				}
			}
			if (ok) {
				cart.add(goods);
			}
		}

		logger.trace("카트사이즈 {}", cart.size());

		Object obj = session.getAttribute("cart");
		logger.trace("세션 cart:{}", obj);
		return obj;
	}

	@RequestMapping(value = "/getSession", method = RequestMethod.POST)
	public @ResponseBody Object getSession(HttpSession session, @ModelAttribute("cart") List<Goods> cart,
			@ModelAttribute("dbcart") List<Goods> dbcart) {
		Object cartObj = null;
		if (dbcart.isEmpty()) {
			logger.trace("dbcart가 null입니다.");
			cartObj = cart;
		} else {
			cartObj = dbcart;
		}
		logger.trace("dbcart: {}", session.getAttribute("dbcart"));
		logger.trace("cart : {}", session.getAttribute("cart"));
		logger.trace("Object cart : {}", cartObj);
		return cartObj;
	}

	// 루트 불러오기(번호로)
	@RequestMapping(value = "/route", method = RequestMethod.GET)
	public String free(HttpSession session, Model model, @RequestParam int routeNo, SessionStatus status,
			@ModelAttribute Goods goods, @ModelAttribute("dbcart") List<Goods> dbcart) {

		dbcart.clear();
		Route result = rs.selectRouteByNo(routeNo);
		String str = result.getRouteFull();
		int count = 0;
		for (int c = 0; c < str.length(); c++) {
			if (str.charAt(c) == '♬') {
				count++;
			}
		}
		logger.trace("카운트 : {}", count);
		int i = count / 5;
		Goods goodss[] = new Goods[i];
		for (int cnt = 0; cnt < i; cnt++) {
			goodss[cnt] = new Goods();
		}

		String routeName[] = new String[i];
		String routeX[] = new String[i];
		String routeY[] = new String[i];
		String routeAddr[] = new String[i];
		String routeImg[] = new String[i];

		i = 0;
		StringTokenizer tokens = new StringTokenizer(str, "♬");
		while (tokens.hasMoreTokens()) {
			routeName[i] = tokens.nextToken();
			goodss[i].setTitle(routeName[i]);
			routeX[i] = tokens.nextToken();
			goodss[i].setLatitude(Double.parseDouble(routeX[i]));
			routeY[i] = tokens.nextToken();
			goodss[i].setLongitude(Double.parseDouble(routeY[i]));
			routeAddr[i] = tokens.nextToken();
			goodss[i].setAddress(routeAddr[i]);
			routeImg[i] = tokens.nextToken();
			goodss[i].setImageUrl(routeImg[i]);
			goodss[i].setCategory("여행");
			i++;

		}
		List<String> latLng = new ArrayList<>();
		List<String> center = new ArrayList<>();
		String xyroute;
		for (int y = 0; y < i; y++) {
			String lat = routeX[y];
			String lng = routeY[y];
			xyroute = lat + "," + lng;
			latLng.add(y, xyroute);
			center.add(y, xyroute);

		}

		List<Integer> pos = new ArrayList<>();
		List<String> cityList = new ArrayList<>();
		String city = "";
		Integer mapSize = null;
		for (int z = 0; z < i; z++) {
			String route = routeAddr[z];
			logger.trace("경로 불러오기!:{}", route);

			int cnt = 0;
			for (int c = 0; c < route.length(); c++) {
				if (route.charAt(c) == ' ') {
					pos.add(cnt);
				}
				cnt++;
			}
			city = route.substring(0, pos.get(0)).trim();
			cityList.add(city);
		}

		// 중복값 제거
		List<String> uniqueItems = new ArrayList<String>(new HashSet<String>(cityList));
		logger.trace("중복값 제거 후 크기 : {}", uniqueItems.size());

		if (uniqueItems.size() != 1) {
			xyroute = "35.865415, 128.085319";
			center.add(0, xyroute);
			mapSize = 13;
		} else {
			mapSize = 10;
		}

		for (int cnt = 0; cnt < i; cnt++) {
			dbcart.add(goodss[cnt]);
		}

		model.addAttribute("routeNo", routeNo);
		model.addAttribute("routeName", result.getRouteName());
		model.addAttribute("routeContent", result.getRouteContent());
		model.addAttribute("latLng", latLng);
		model.addAttribute("center", center);
		model.addAttribute("mapSize", mapSize);
		return "session/guide/map_api_image";
	}

	@RequestMapping(value = "/mapSave", method = RequestMethod.POST)
	public String DBCall(@ModelAttribute("cart") List<Goods> cart, SessionStatus status, HttpSession session,
			Model model) {
		logger.trace("cart가 풀경로: db로 insert쿼리문장 작성해야함 {}", cart);
		String content = "";
		for (int i = 0; i < cart.size(); i++) {
			content += "♬";
			content += cart.get(i).getTitle();
			content += "♬";
			content += cart.get(i).getLatitude();
			content += "♬";
			content += cart.get(i).getLongitude();
			content += "♬";
			content += cart.get(i).getAddress();
			content += "♬";
			content += cart.get(i).getImageUrl();
			logger.trace("{}", content);
		}
		Users user = (Users) session.getAttribute("Users");
		String userId = user.getUserId();
		rs.insertRoute(content, userId);
		status.setComplete();
		model.addAttribute("message", "경로 저장완료");
		return "redirect:/mypageMain";
	}

	@RequestMapping(value = "/mapUpdate", method = RequestMethod.POST)
	public String mapUpdate(@ModelAttribute("dbcart") List<Goods> dbcart, SessionStatus status, HttpSession session,
			@RequestParam String routeName, @RequestParam String routeContent, @RequestParam int routeNo, Model model) {
		logger.trace("{}", dbcart);
		String content = "";
		for (int i = 0; i < dbcart.size(); i++) {
			content = "♬";
			content += dbcart.get(i).getTitle();
			content += "♬";
			content += dbcart.get(i).getLatitude();
			content += "♬";
			content += dbcart.get(i).getLongitude();
			content += "♬";
			content += dbcart.get(i).getAddress();
			content += "♬";
			content += dbcart.get(i).getImageUrl();
			logger.trace("{}", content);
		}
		String userId = (String) session.getAttribute("Users.userId");
		rs.updateRoute(routeName, routeContent, content, routeNo);
		status.setComplete();
		model.addAttribute("message", "경로 수정완료");
		return "redirect:/mypageMain";
	}

	@RequestMapping(value = "/mapDelete", method = RequestMethod.POST)
	public String mapUpdate(SessionStatus status, Model model, @RequestParam int routeNo) {
		rs.deleteRoute(routeNo);
		status.setComplete();
		model.addAttribute("message", "경로 삭제완료");

		return "redirect:/mypageMain";
	}

}
