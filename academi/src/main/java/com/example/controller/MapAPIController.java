package com.example.controller;

import java.util.ArrayList;
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
import com.example.dto.Route;
import com.example.dto.Users;
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

	
	@RequestMapping(value = "/latlng", method = RequestMethod.GET)
	public String latlng(Model model, HttpServletRequest request) {
		String lat = request.getParameter("lat");
		String lng = request.getParameter("lng");
		logger.trace("lat : {}",lat);
		logger.trace("lng : {}", lng);
		request.setAttribute("lat",lat);
		request.setAttribute("lng",lng);
		return "session/guide/map_api";
	}

	
	@RequestMapping(value = "/domap", method = RequestMethod.GET)
	public String domap(Model model) {
		return "session/guide/do_map";
	}

	@RequestMapping(value = "/Jeollanamdo", method = RequestMethod.GET)
	public String Jeollanamdo(Model model) {
		return "session/guide/citymap/Jeollanam_do";
	}

	@RequestMapping(value = "/Jeollabukdo", method = RequestMethod.GET)
	public String Jeollabukdo(Model model) {
		return "session/guide/citymap/Jeollabuk_do";
	}

	@RequestMapping(value = "/jejudo", method = RequestMethod.GET)
	public String jejudo(Model model) {
		return "session/guide/citymap/jeju_do";
	}

	@RequestMapping(value = "/Gyeongsangnamdo", method = RequestMethod.GET)
	public String Gyeongsangnam_do(Model model) {
		return "session/guide/citymap/Gyeongsangnam_do";
	}

	@RequestMapping(value = "/Gyeongsangbukdo", method = RequestMethod.GET)
	public String Gyeongsangbukdo(Model model) {
		return "session/guide/citymap/Gyeongsangbuk_do";
	}

	@RequestMapping(value = "/gyeonggido", method = RequestMethod.GET)
	public String gyeonggido(Model model) {
		return "session/guide/citymap/gyeonggi_do";
	}

	@RequestMapping(value = "/Gangwondo", method = RequestMethod.GET)
	public String Gangwondo(Model model) {
		return "session/guide/citymap/Gangwon_do";
	}

	@RequestMapping(value = "/chungcheongnamdo", method = RequestMethod.GET)
	public String chungcheongnamdo(Model model) {
		return "session/guide/citymap/chungcheongnam_do";
	}

	@RequestMapping(value = "/chungcheongbukdo", method = RequestMethod.GET)
	public String chungcheongbukdo(Model model) {
		return "session/guide/citymap/chungcheongbuk_do";
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
	@RequestMapping(value = "/session/route", method = RequestMethod.GET)
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

		for (int cnt = 0; cnt < i; cnt++) {
			dbcart.add(goodss[cnt]);
		}
		model.addAttribute("routeNo", routeNo);
		model.addAttribute("routeName", result.getRouteName());
		model.addAttribute("routeContent", result.getRouteContent());
		return "session/guide/map_api";
	}

	@RequestMapping(value = "/mapSave", method = RequestMethod.POST)
	public String DBCall(@ModelAttribute("cart") List<Goods> cart, SessionStatus status, HttpSession session,
			Model model) {
		logger.trace("cart가 풀경로: db로 insert쿼리문장 작성해야함 {}", cart);
		String content = "";
		for (int i = 0; i < cart.size(); i++) {
			content = "♬";
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
	public String mapUpdate(SessionStatus status,Model model,@RequestParam int routeNo){
		rs.deleteRoute(routeNo);
		status.setComplete();
		model.addAttribute("message", "경로 삭제완료");
		
			return "redirect:/mypageMain";
	}
}
