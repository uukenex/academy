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
public class UserController {
	static Logger logger = LoggerFactory.getLogger(UserController.class);

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
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutUser(HttpServletRequest request,HttpSession session){
		session.invalidate();
		return "redirect:/autoLogout";
	}
	
	@RequestMapping(value = "/autoLogout", method = RequestMethod.GET)
	public String autoLogin(Model model) {
		return "nonsession/login/logout";
	}
	
	
}
		
	
