package com.example.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Random;

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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.dto.Users;
import com.example.service.UserService;
import com.example.util.SendMailUtil;

@Controller
@SessionAttributes({ "cart" })
public class UserController {
	static Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserService uService;

	@RequestMapping(value = "/loginCheck", method = RequestMethod.GET)
	public String loginCheck(HttpServletRequest request, HttpSession session) {
		return "nonsession/login/loginCheck";
	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public String loginUser(Model model, HttpServletRequest request, HttpSession session) {
		String returnURL = "nonsession/login/login";
		String userId = request.getParameter("id").toUpperCase();
		String userPass = request.getParameter("password");
		MyHash ht = new MyHash();
		userPass = ht.testMD5(userPass);
		Users user = uService.login(userId);
		String forPage = (String) session.getAttribute("forPage");
		if (user != null && user.getUserPass().equals(userPass)) {
			if (user.getUserId().equals(userId)) {
				session.setAttribute("Users", user);
				model.addAttribute("message", "환영합니다. ");
				model.addAttribute("userId", userId);
				returnURL = "logintest";
				logger.trace("forpage:{}", forPage);
			}
		} else {
			model.addAttribute("message", "아이디 혹은 비밀번호를 확인해주세요.");
			returnURL = "nonsession/login/login";
		}
		return returnURL;
	}

	@RequestMapping(value = "/directloginUser", method = RequestMethod.POST)
	public String directloginUser(Model model, HttpServletRequest request, HttpSession session) {
		String returnURL = "redirect:/free";
		String userId = request.getParameter("id").toUpperCase();
		String userPass = request.getParameter("password");
		MyHash ht = new MyHash();
		userPass = ht.testMD5(userPass);
		Users user = uService.login(userId);
		//String forPage = (String) session.getAttribute("forPage");
		if (user != null && user.getUserPass().equals(userPass)) {
			if (user.getUserId().equals(userId)) {
				session.setAttribute("Users", user);
				//model.addAttribute("message", "환영합니다. ");
				//model.addAttribute("userId", userId);
				//returnURL = forPage;
				//logger.trace("forpage:{}", forPage);
			}
		} else {
			model.addAttribute("message", "아이디 혹은 비밀번호를 확인해주세요.");
			returnURL = "nonsession/login/loginCheck";
		}
		return returnURL;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutUser(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		return "redirect:/mainpage2";
	}

	@RequestMapping(value = "/autoLogout", method = RequestMethod.GET)
	public String autoLogout(Model model) {
		return "nonsession/login/logout";
	}

	

	@RequestMapping("/checkId")
	public @ResponseBody int checkId(@RequestParam String userId) {
		return uService.checkId(userId);
	}

	@RequestMapping("/checkNick")
	public @ResponseBody int checkNick(@RequestParam String userNick) {
		return uService.checkNick(userNick);
	}

	@RequestMapping(value = "/joinOk", method = RequestMethod.POST)
	public String join(Model model, @RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String phone, @RequestParam String email, @RequestParam String nickname,
			HttpSession session) {
		logger.trace("joinOk controller ");
		String msg = null;
		MyHash ht = new MyHash();
		password = ht.testMD5(password);
		
		Users user = new Users(id.trim(), password, name, email.trim(), phone.trim(), nickname);
		int result = uService.joinUser(user);
		if (result == 1) {
			msg = "회원가입을 축하드립니다. " + name + "님";
		} else {
			msg = "모종의 사유로 실패하였습니다." + "<br> 관리자에게 문의해주세요";
		}
		session.setAttribute("message", msg);
		session.setAttribute("Users", user);
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
	public String searchId(Model model, @RequestParam String name, @RequestParam String email) {
		String msg = null;
		List<String> result = uService.SearchId(name, email);
		if (result.isEmpty()) {
			msg = "검색 결과가 없습니다.";
		} else {
			msg = "검색결과는 다음과 같습니다." + result + "";
		}
		model.addAttribute("message", msg);
		return "nonsession/join/joinok";
	}

	// 비번찾기
	@RequestMapping(value = "/findPassword", method = RequestMethod.GET)
	public String findPassword(Model model) {
		return "nonsession/login/pw_find";
	}

	@RequestMapping("/searchPass")
	public String searchPass(Model model, @RequestParam String id, @RequestParam String name,
			@RequestParam String email) {
		String msg = null;
		String result = uService.SearchPass(id, name, email);
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();
		
		String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,6,7,8,9".split(",");
		
		for (int i = 0; i < 8; i++) {
			buffer.append(chars[random.nextInt(chars.length)]);
			}
		
		if (result == null) {
			msg = "검색 결과가 없습니다.";
		} else {
			SendMailUtil sendpass = new SendMailUtil();
			sendpass.email_Password(email, buffer.toString());
			
			//패스워드를 업데이트 시켜줌
			MyHash ht = new MyHash();
			result = ht.testMD5(buffer.toString());
			
			int passwordUpdate = uService.updatePass(id, result);
			logger.trace("passwordUpdate:{}",passwordUpdate);
			
			msg="메일로 비밀번호가 전송되었습니다.";
		}
		model.addAttribute("message", msg);
		return "nonsession/join/joinok";
	}
	
	
	class MyHash {
		public String testMD5(String str) {
			String md5Str = "";
			try {
				MessageDigest md = MessageDigest.getInstance("MD5");
				md.update(str.getBytes());
				byte byteData[] = md.digest();
				StringBuffer sb = new StringBuffer();
				// byte code를 hex format으로 변경
				for (int i = 0; i < byteData.length; i++) {
					sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
				}
				md5Str = sb.toString();

			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
				md5Str = null;
			}
			return md5Str;
		}
	}

}
