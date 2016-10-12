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
		String returnURL="";
		String userId=request.getParameter("id");
		String userPass=request.getParameter("password");
		Users user = uService.login(userId);
		
		if(user.getUserId().equals(userId)&&user.getUserPass().equals(userPass)){
			logger.trace("접속완료 : {}",userId);
			session.setAttribute("Users",user);
			model.addAttribute("userId", userId);
			returnURL ="logintest";
		}else {
			logger.trace("존재하지않습니다");
			returnURL ="nonsession/login/login";
		}
		return returnURL;
		
		
	}
	
}