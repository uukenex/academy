package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.example.dto.Goods;
@SessionAttributes({"cart","dbcart"})
@Controller
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
	public String mapapi(SessionStatus status,Model model, HttpServletRequest request,HttpSession session) {
		/*status.setComplete();*/
		session.removeAttribute("dbcart");
		
		String local = request.getParameter("incheon");
		model.addAttribute("local", local);
		
		
		return "session/guide/map_api";
	}

	@ModelAttribute("cart")
	List<Goods> cart() {
	  return new ArrayList<Goods>(); //or however you create a default
	}
	@ModelAttribute("dbcart")
	List<Goods> dbcart() {
	  return new ArrayList<Goods>(); //or however you create a default
	}
	
	@RequestMapping(value = "/session/apiview", method = RequestMethod.GET)
	public String apiview(SessionStatus status,Model model, HttpServletRequest request,HttpSession session) {
		status.setComplete();
		model.addAttribute("cart", new ArrayList<Goods>());
		if (!model.containsAttribute("cart")) {
			model.addAttribute("cart", new ArrayList<Goods>());
		}
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
	public @ResponseBody Object addDB(@ModelAttribute Goods goods, 
			@ModelAttribute("dbcart") List<Goods> dbcart,
			HttpSession session, Model model) {
		// 이미 같은정보가 저장되있다면 팅겨내야함
		logger.trace("addDB");
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
	public @ResponseBody Object add(@ModelAttribute Goods goods, 
			@ModelAttribute("cart") List<Goods> cart,
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
		logger.trace("세션 cart:{}",obj);
		return obj;
	}
	
	
	@RequestMapping(value = "/getSession", method = RequestMethod.POST)
	public @ResponseBody Object getSession(HttpSession session,
			@ModelAttribute("cart") List<Goods> cart,
			@ModelAttribute("dbcart") List<Goods> dbcart) {
		Object cartObj=null;
		if (dbcart.isEmpty()) {
			cartObj = cart;
		} else {
			cartObj = dbcart;
		}
		logger.trace("dbcart: {}",session.getAttribute("dbcart"));
		logger.trace("cart : {}",session.getAttribute("cart"));
		logger.trace("Object cart : {}",cartObj);
		return cartObj;
	}

	@RequestMapping(value = "/session/DBCall", method = RequestMethod.POST)
	public String DBCall(@ModelAttribute("cart") List<Goods> cart, SessionStatus status, HttpSession session) {

		for (int i = 0; i < cart.size(); i++) {
			String content = "♬";
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
		status.setComplete();
		session.removeAttribute("dbcart");
		return "redirect:/session/mapapi";
	}
}
