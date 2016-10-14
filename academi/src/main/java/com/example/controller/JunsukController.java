package com.example.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.dto.Users;
import com.example.service.UserService;

@Controller
public class JunsukController {
	static Logger logger = LoggerFactory.getLogger(JunsukController.class);

	@Autowired
	UserService uService;
	
	
	@RequestMapping(value="/loginUser", method=RequestMethod.POST)
	public String loginUser(Model model, HttpServletRequest request, HttpSession session){
		String returnURL="nonsession/login/login";
		String userId=request.getParameter("id");
		String userPass=request.getParameter("password");
		Users user = uService.login(userId);
		
		
		if(user!=null&&user.getUserPass().equals(userPass)){
			if(user.getUserId().equals(userId)){
				session.setAttribute("Users", user);
				model.addAttribute("message","어서오세요 동물의숲 ");
				model.addAttribute("userId", userId);
				returnURL ="logintest";
				
			}
			}else{
				model.addAttribute("message","아이디 혹은 비밀번호를 확인해주세요.");
				returnURL ="nonsession/login/login";
			}
		return returnURL;
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
}
		
		
		/*if(user.getUserId().equals(userId)&&user.getUserPass().equals(userPass)){
			logger.trace("접속완료 : {}",userId);
			session.setAttribute("Users",user);
			model.addAttribute("userId", userId);
			returnURL ="logintest";
		}else if(user.getUserId()==null){
			logger.trace("아이디가 존재하지 않습니다.");
			returnURL ="nonsession/login/login";
		}else{
			logger.trace("비밀번호를 확인해주세요");
			returnURL ="nonsession/login/login";
		}
		return returnURL;
		
		
	}*/
	
