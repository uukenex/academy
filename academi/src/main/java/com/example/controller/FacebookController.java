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
/**
 * 페이스북 로그인
 *
 */

@Controller
public class FacebookController {
	static Logger logger = LoggerFactory.getLogger(FacebookController.class);
	@Autowired
	UserService us;

	@RequestMapping(value = "/facebookjoin", method = RequestMethod.GET)
	public String facebookJoin(Model model, @RequestParam String fId, @RequestParam String fName) {
		model.addAttribute("fId", fId);
		model.addAttribute("fName", fName);
		return "nonsession/join/facebook_join";
	}

	@RequestMapping(value = "/facebooklogin", method = RequestMethod.GET)
	public String facebookLogin(Model model, @RequestParam String fId, @RequestParam String fName) {
		model.addAttribute("fId", fId);
		model.addAttribute("fName", fName);
		return "nonsession/login/facebook_login";
	}
	
	@RequestMapping(value = "/directFacebooklogin", method = RequestMethod.GET)
	public String facebookLogin2(Model model, @RequestParam String fId, @RequestParam String fName) {
		model.addAttribute("fId", fId);
		model.addAttribute("fName", fName);
		return "nonsession/login/directfacebook_login";
	}


	@RequestMapping("/checkfId")
	public @ResponseBody int checkId(@RequestParam String fId) {
		return us.checkId(fId);

	}

	@RequestMapping(value = "/floginUser", method = RequestMethod.POST)
	public String loginUser(Model model, HttpServletRequest request, HttpSession session) {
		String userId = request.getParameter("facebookId");
		Users user = us.login(userId);

		if (user.getUserId().equals(userId)) {
			session.setAttribute("Users", user);
			model.addAttribute("message", "어서오세요");
			model.addAttribute("userId", userId);
			
		}
		return "logintest";
	}
	
	@RequestMapping(value = "/directFloginUser", method = RequestMethod.POST)
	public String loginUser2(Model model, HttpServletRequest request, HttpSession session) {
		String userId = request.getParameter("facebookId");
		Users user = us.login(userId);
		String forPage = (String) session.getAttribute("forPage");
		if (user.getUserId().equals(userId)) {
			session.setAttribute("Users", user);
			model.addAttribute("message", "어서오세요");
			model.addAttribute("userId", userId);
			
		}
		return forPage;
	}


	@RequestMapping(value = "/fjoinOk", method = RequestMethod.POST)
	public String join(Model model, @RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String phone, @RequestParam String email, @RequestParam String nickname,
			HttpSession session) {

		String msg = null;
		logger.trace("ps : {}",password);
		Users user = new Users(id.trim(), password, name, email.trim(), phone.trim(), nickname);
		int result = us.joinUser(user);
		if (result == 1) {
			msg = "회원가입을 축하드립니다. " + name + "님";
		} else {
			msg = "모종의 사유로 실패하였습니다." + "<br> 관리자에게 문의해주세요";
		}
		session.setAttribute("message", msg);
		session.setAttribute("Users", user);
		return "redirect:/autoLogin";
	}

	
}
