package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.service.UserService;

@Controller
public class BasicController {
	

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
	public String login(Model model) {
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
	

	

}
