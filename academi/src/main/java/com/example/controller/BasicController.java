package com.example.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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

import com.example.dto.Comments;
import com.example.dto.Qna;
import com.example.dto.Review;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.service.CommentService;
import com.example.service.QnaService;
import com.example.service.ReviewService;
import com.example.service.RouteService;

@Controller
public class BasicController {
	static Logger logger = LoggerFactory.getLogger(BasicController.class);

	@Autowired
	CommentService cs;
	@Autowired
	QnaService qs;
	@Autowired
	ReviewService rs;
	@Autowired 
	RouteService routeService;
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help(Model model) {
		return "help/help";
	}
	
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
	
	@RequestMapping("/session/mypageMain")
	public String mypageMain(Model model,HttpSession session) {
		if(session.getAttribute("Users")==null){
			//세션 forpage에 값을 넣어줌
			session.setAttribute("forPage", "session/information/mypage_main");
		}
		return "session/information/mypage_main";
	}
	
	@RequestMapping("/passwordChk")
	public String passwordChk(Model model) {
		return "session/information/password_check";
		}
	
	@RequestMapping("/fInformChange")
	public String fInformChange(Model model) {
		return "session/information/facebook_inform_change";
	}
	
	
	@RequestMapping("/informChange")
	public String inform_change(Model model, HttpServletRequest request,HttpSession session) {
		
		Users user = (Users) session.getAttribute("Users");
		String userPass = request.getParameter("passwordCheck");
		MyHash ht = new MyHash();
		userPass = ht.testMD5(userPass);
		
		if(userPass.equals(user.getUserPass()))
		{
				return "session/information/inform_change";
			
		}else{
			model.addAttribute("message","비밀번호가 일치하지 않습니다.");
			return "redirect:/session/mypageMain";
		}
	
	}
		
		
	
	@RequestMapping("/mapRightMenu")
	public String mapRightMenu(Model model) {
		return "session/guide/map_rightTab_menu";
	}
	
	// 쓰던 메인
	@RequestMapping("/mainpage2")
	public String mainpage2(Model model) {
		List<Comments> noticeTop5 = cs.selectNoticeTop5();
		List<Comments> freeTop5 = cs.selectFreeTop5();
		List<Qna> qnaTop5 = qs.selectQnaTop5();
		List<Review> reviewTop3 = rs.reviewTop3();
		List<Route> routeTop4 = routeService.selectMainList();
		
		logger.trace("noticeTop5 : {}",noticeTop5);
		logger.trace("FreeTop5 : {}",freeTop5);
		logger.trace("qnaTop5 : {}",qnaTop5);
		logger.trace("reviewTop3 : {}",reviewTop3);
		logger.trace("routeTop4 : {}",routeTop4);
		
		model.addAttribute("noticeTop5",noticeTop5);
		model.addAttribute("reviewTop3",reviewTop3);
		model.addAttribute("free",freeTop5);
		model.addAttribute("qnaTop5",qnaTop5);
		model.addAttribute("reviewTop3",reviewTop3);
		model.addAttribute("routeTop4",routeTop4);
		return "nonsession/mainpage/mainPage";
	}

	@RequestMapping("/mainpage")
	public String mainpage(Model model){
		return "nonsession/mainpage/mainpage2";
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
