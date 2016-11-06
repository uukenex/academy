package com.example.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dto.Users;
import com.example.service.UserService;

@Controller
public class BasicController {
	static Logger logger = LoggerFactory.getLogger(BasicController.class);

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String sayHello(Model model) {
		return "showMessage";
	}

	@RequestMapping("/join")
	public String join(Model model) {
		return "nonsession/join/join";
	}

	@RequestMapping(value = "/id_check", method = RequestMethod.GET)
	public String idCheck(Model model) {
		return "nonsession/join/id_check";
	}

	@RequestMapping("/mainpage")
	public String mainpage(Model model) {
		return "nonsession/mainpage/mainpage2";
	}

	@RequestMapping("/login")
	public String login(Model model,HttpSession session,HttpServletRequest request) {
		return "nonsession/login/login";
	}

	

	@RequestMapping(value = "/findIdSuccess", method = RequestMethod.GET)
	public String findIdSuccess(Model model) {
		return "nonsession/login/id_find_success";
	}
	@RequestMapping(value = "/session/test", method = RequestMethod.GET)
	public String test(Model model) {
		return "session/mainnotice/notice_sign";
	}
	
	@RequestMapping("/mypageMain")
	public String mypageMain(Model model) {
		return "session/information/mypage_main";
	}
	
	@RequestMapping("/informChange")
	public String inform_change(Model model, HttpSession session) {
		Users user = (Users) session.getAttribute("Users");
		if(user.getUserId().length()>12){
			return "session/information/facebook_inform_change";
		}else{
		return "session/information/inform_change";
		}
	}
	
	@RequestMapping("/mapRightMenu")
	public String mapRightMenu(Model model) {
		return "session/guide/map_rightTab_menu";
	}
	

}
