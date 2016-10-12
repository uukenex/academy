package com.example.controller;

import java.util.List;

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
public class THController {
	static Logger logger = LoggerFactory.getLogger(THController.class);

	@Autowired
	UserService us;

	@RequestMapping("/checkId")
	public @ResponseBody int checkId(@RequestParam String userId) {
		return us.checkId(userId);
	}

	@RequestMapping("/checkNick")
	public @ResponseBody int checkNick(@RequestParam String userNick) {
		return us.checkNick(userNick);
	}

	@RequestMapping(value = "/joinOk", method = RequestMethod.POST)
	public String join(Model model, @RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String phone, @RequestParam String email, @RequestParam String nickname,
			HttpSession session) {
		logger.trace("joinOk controller ");
		String msg = null;
		Users user = new Users(id, password, name, email, phone, nickname);
		int result = us.joinUser(user);
		if (result == 1) {
			msg = "회원가입을 축하드립니다. " + name + "님";
		} else {
			msg = "모종의 사유로 실패하였습니다." + "<br> 관리자에게 문의해주세요";
		}
		session.setAttribute("message", msg);

		return "redirect:/autoLogin";
	}

	@RequestMapping(value = "/autoLogin", method = RequestMethod.GET)
	public String autoLogin(Model model) {
		return "nonsession/join/joinok";
	}

	// 아이디찾기
	@RequestMapping("/findId")
	public String findId(Model model) {
		return "nonsession/login/id_find";
	}

	@RequestMapping("/searchId")
	public String searchId(Model model,@RequestParam String name, @RequestParam String email){
		String msg = null;
		List<String> result = us.SearchId(name, email);
		if (result.isEmpty()) {
			msg = "검색 결과가 없습니다.";
		} else {
			msg = "검색결과는 다음과 같습니다."+result+"";
		}
		model.addAttribute("message",msg);
		return "nonsession/join/joinok";
	}
	
	// 비번찾기
	@RequestMapping(value = "/findPassword", method = RequestMethod.GET)
	public String findPassword(Model model) {
		return "nonsession/login/pw_find";
	}
	
	@RequestMapping("/searchPass")
	public String searchPass(Model model,@RequestParam String id,@RequestParam String name, @RequestParam String email){
		String msg = null;
		String result = us.SearchPass(id, name, email);
		if (result==null) {
			msg = "검색 결과가 없습니다.";
		} else {
			msg = "검색결과는 다음과 같습니다."+result+"";
		}
		model.addAttribute("message",msg);
		return "nonsession/join/joinok";
	}

}
