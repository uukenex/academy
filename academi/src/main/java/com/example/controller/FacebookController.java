package com.example.controller;

import javax.servlet.http.HttpSession;

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
public class FacebookController {
	@Autowired
	UserService us;
	
	@RequestMapping(value = "/facebookjoin", method = RequestMethod.GET)
	public String sayHello(Model model,
			@RequestParam String fId,
			@RequestParam String fName) {
		model.addAttribute("fId",fId);
		model.addAttribute("fName",fName);
		return "nonsession/join/facebook_join";
	}
	
	@RequestMapping("/checkfId")
	public @ResponseBody int checkId(@RequestParam String fId) {
		return us.checkId(fId);
	}
	
	@RequestMapping(value = "/fjoinOk", method = RequestMethod.POST)
	public String join(Model model, @RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String phone, @RequestParam String email, @RequestParam String nickname,
			HttpSession session) {
	
		String msg = null;
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