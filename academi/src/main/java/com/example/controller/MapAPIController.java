package com.example.controller;

import java.util.ArrayList;
import java.util.List;

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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.dto.Goods;
import com.example.dto.Users;
import com.example.service.UserService;


@Controller
@SessionAttributes({"cart"})
public class MapAPIController {
	static Logger logger = LoggerFactory.getLogger(MapAPIController.class);

	
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
	@RequestMapping(value = "/session/mapapi", method = RequestMethod.GET)
	public String mapapi(Model model, HttpServletRequest request) {
		String local = request.getParameter("incheon");
		model.addAttribute("local",local);
		if (!model.containsAttribute("cart")) {
			model.addAttribute("cart", new ArrayList<Goods>());
		}
		return "session/guide/map_api";
	}
	
	
	/**
	 * 세션에 cart가 없을 경우 생성한다.
	 * @param model
	 * @return
	 */
/*	@RequestMapping(value="/add",method = RequestMethod.POST)
	public String getCart(Model model) {
		
		return "redirect:/add2";
	}*/
	
	/**
	 * 세션에 저장되 있는 cart에 상품을 추가
	 * @param goods
	 * @param cart
	 * @return
	 */
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String add(@ModelAttribute Goods goods,
			@ModelAttribute("cart") List<Goods> cart) {
		cart.add(goods);
		return "redirect:/session/mapapi";
	}
	
	
}
		
	
