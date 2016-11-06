package com.example.controller;

import java.util.List;
import java.util.Map;

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

import com.example.dto.PhotoBook;
import com.example.dto.Review;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.service.PhotoBookService;
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
	@Autowired
	PhotoBookService ps;

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUser(Model model, HttpServletRequest request, HttpSession session) {
		String userId = request.getParameter("changeId");
		String userPass = request.getParameter("changePass");
		String userPhone = request.getParameter("changePhone");
		String userEmail = request.getParameter("changeEmail");
		String userNick = request.getParameter("changeNick");
		if (userPass == "") {
			userPass = request.getParameter("currentPass");
		}
		if (userPhone == "") {
			userPhone = request.getParameter("currentPhone");
		}
		if (userEmail == "") {
			userEmail = request.getParameter("currentEmail");
		}
		if (userNick == "") {
			userNick = request.getParameter("currentNick");
		}
		logger.trace("아이디 : {},비밀번호 : {}, 핸드폰 : {}, 이메일 : {}, 닉네임 : {}", userId, userPass, userPhone, userEmail,
				userNick);

		us.updateUser(userId, userPass, userPhone, userEmail, userNick);
		Users user = us.login(userId);
		session.setAttribute("Users", user);
		
		if(userId.length()>13){
			return "/session/information/facebook_inform_change";
		}else{
			return "/session/information/inform_change";
		}	
	}

	@RequestMapping(value = "/session/mypageRoute", method = RequestMethod.GET)
	public String mypageRoute(Model model, HttpSession session, @RequestParam int page) {

		Users user = (Users) session.getAttribute("Users");
		String userId = user.getUserId();
		
		int pageCount = rs.pageCountbyId(userId);
		int totalPage = pageCount / 3 + 1;
		if(pageCount % 3 == 0){
			totalPage -=1;
		}
		if(pageCount == 0){
			totalPage = 0;
		}
		
		List<Route> result = rs.selectRouteByIdForMypage(userId, totalPage);

		model.addAttribute("totalPage",totalPage);
		model.addAttribute("Route", result);
		logger.trace("결과 값  {} :", result);
		return "/session/information/myplan";
	}
	//selectRouteByIdForMypage
	@RequestMapping(value = "/session/mypageReview", method = RequestMethod.GET)
	public String mypageReview(Model model, HttpSession session,
			@RequestParam int page) {
		Users user = (Users) session.getAttribute("Users");
		String userId = user.getUserId();
		
		int pageCount = rs.pageCountbyId(userId);
		int totalPage = pageCount / 3 + 1;
		if(pageCount % 3 == 0){
			totalPage -=1;
		}
		if(pageCount == 0){
			totalPage = 0;
		}
		
		List<Review> result = reviewService.myPageReview(userId,page);

		model.addAttribute("totalPage",totalPage);
		model.addAttribute("Review", result);
		logger.trace("결과 값  {} :", result);
		return "/session/information/mypost";
	}

	// 내 폴더 공유로 넘어가기
	@RequestMapping(value = "/session/myShare", method = RequestMethod.GET)
	public String myShare(Model model, HttpSession session) {
		Users users = (Users) session.getAttribute("Users");
		if (users == null) {
			return "/session/information/myshare";
		}
		String userId = users.getUserId();

		List<PhotoBook> myFolderList = ps.selectMyFolder(userId);
		List<PhotoBook> sharedFolderList = ps.selectSharedFolder(userId);
		model.addAttribute("myFolderList", myFolderList);
		model.addAttribute("sharedFolderList", sharedFolderList);
		return "/session/information/myshare";
	}

	// 내폴더 눌렀을때 사람리스트 띄우기
	@RequestMapping(value = "/session/shareList", method = RequestMethod.GET)
	public String myShareList(Model model, HttpSession session, @RequestParam String folderName) {
		Users users = (Users) session.getAttribute("Users");
		if (users == null) {
			return "/session/information/myshare";
		}
		String userId = users.getUserId();
		List<PhotoBook> sharePersonList = ps.selectOne(userId, folderName);
		model.addAttribute("sharePersonList", sharePersonList);
		return "/session/information/sharepersonlist";
	}

	// 내폴더 눌렀을때 사람리스트 띄우기
	@RequestMapping(value = "/searchNick", method = RequestMethod.GET)
	public String searchNick(Model model, HttpSession session) {
		return "/session/information/searchUser";
	}

	// 닉네임검색 ajax
	@RequestMapping(value = "/searchNickAjax", method = RequestMethod.POST)
	public @ResponseBody List<Map<String, String>> searchNickAjax(Model model, HttpSession session,
			@RequestParam String nickName) {
		List<Map<String, String>> searchList = ps.searchNick(nickName);
		return searchList;
	}

	// 닉네임검색 ajax
	@RequestMapping(value = "/selectedAjax", method = RequestMethod.POST)
	public @ResponseBody int dataAjax(Model model, HttpSession session, @RequestParam String shareId,
			@RequestParam String folderName, @RequestParam String winName) {
		Users users = (Users) session.getAttribute("Users");
		if (users == null) {
			return 0;
		}
		String userId = users.getUserId();
		int result = 0;
		if (winName.equals("shareId1"))
			result = ps.share1up(userId, shareId, folderName);
		else if (winName.equals("shareId2"))
			result = ps.share2up(userId, shareId, folderName);
		else if (winName.equals("shareId3"))
			result = ps.share3up(userId, shareId, folderName);
		else if (winName.equals("shareId4"))
			result = ps.share4up(userId, shareId, folderName);
		return result;
	}
}
