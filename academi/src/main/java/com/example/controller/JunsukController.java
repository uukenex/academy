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
		
		
		if(user!=null&&user.getUserPass().equals(userPass)){
			if(user.getUserId().equals(userId)){
				session.setAttribute("Users", user);
				logger.trace("접속완료 : {}",userId);
				model.addAttribute("userId", userId);
				returnURL ="logintest";
			}
			}else{
				logger.trace("아이디 혹은 비밀번호를 확인해주세요.");
				returnURL ="nonsession/login/login";
			}
		return returnURL;
	}
	@RequestMapping(value = "/domap", method = RequestMethod.GET)
	public String domap(Model model) {
		return "session/guide/do_map";
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
	
