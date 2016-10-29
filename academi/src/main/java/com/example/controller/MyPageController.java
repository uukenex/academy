package com.example.controller;

import java.util.List;

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

import com.example.dto.Review;
import com.example.dto.ReviewReply;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.service.ReviewReplyService;
import com.example.service.ReviewService;
import com.example.service.RouteService;
import com.example.service.UserService;

@Controller
public class MyPageController {
static Logger logger = LoggerFactory.getLogger(MyPageController.class);
	@Autowired
	UserService us;
	@Autowired
	RouteService rs;
	@Autowired
	ReviewService reviewService;
	@Autowired
	ReviewReplyService ReviewReplyService;
	
	@RequestMapping(value="/updateUser", method=RequestMethod.POST)	
	public String updateUser(Model model, HttpServletRequest request, HttpSession session){
		String userId = request.getParameter("changeId");
		String userPass = request.getParameter("changePass");
		String userPhone =request.getParameter("changePhone");
		String userEmail = request.getParameter("changeEmail");
		String userNick = request.getParameter("changeNick");
		if(userPass == ""){
			userPass = request.getParameter("currentPass");
		}
		if(userPhone == ""){
			userPhone = request.getParameter("currentPhone");
		}
		if(userEmail == ""){
			userEmail = request.getParameter("currentEmail");
		}
		if(userNick == ""){
			userNick = request.getParameter("currentNick");
		}
		logger.trace("아이디 : {},비밀번호 : {}, 핸드폰 : {}, 이메일 : {}, 닉네임 : {}",userId,userPass, userPhone, userEmail, userNick);
		
		us.updateUser(userId, userPass, userPhone, userEmail, userNick);
		Users user = us.login(userId);
		session.setAttribute("Users", user);
		return "/session/information/inform_change";
	}
	
	@RequestMapping(value="/session/mypageRoute",method=RequestMethod.GET)
	public String mypageRoute(Model model,  HttpSession session, HttpServletRequest request){
		
		Users user = (Users) session.getAttribute("Users");
		String userId = user.getUserId();
		
		List<Route> result = rs.selectRouteById(userId);
	
		model.addAttribute("Route", result);
		logger.trace("결과 값  {} :", result);
		return "/session/information/myplan";
	}
	
	
	@RequestMapping(value="/session/mypageReview",method=RequestMethod.GET)
	public String mypageReview(Model model,  HttpSession session, HttpServletRequest request){
		
		Users user = (Users) session.getAttribute("Users");
		String userId = user.getUserId();
		
		List<Review> result = reviewService.myPageReview(userId);
		
		
		model.addAttribute("Review", result);
		logger.trace("결과 값  {} :", result);
		return "/session/information/mypost";
	}
	
	
}
