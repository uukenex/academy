package com.example.controller;

import java.util.HashMap;
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

import com.example.dto.Comments;
import com.example.dto.Users;
import com.example.model.UserNick;
import com.example.service.CommentService;
import com.example.service.UserService;
/**
 * 공지사항 ID찾기 비번찾기 회원가입
 *
 */
@Controller
public class THController {
	static Logger logger = LoggerFactory.getLogger(THController.class);

	@Autowired
	UserService us;
	@Autowired
	CommentService cs;

	/**
	 * 닉네임 불러오기:: user Service 에서 불러 getUserId()를 해서 사용할 것
	 */
	// 단일게시물 보기
	@RequestMapping(value = "/noticeView", method = RequestMethod.GET)
	public String noticeView(Model model, @RequestParam int commentNo) {
		cs.count(commentNo);
		Comments c = cs.selectComment(commentNo);
		
		model.addAttribute("comment", c);
		
		return "nonsession/mainnotice/notice_view";
	}

	/**
	 * 리스트에서의 닉네임불러오기::
	 * for each에서  comments.users.userNick 하면됩니다.
	 */
	// 공지사항 리스트 보기
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Model model, @RequestParam int page, HttpSession session) {
		List<Comments> c = cs.noticeListByPage(page);
		model.addAttribute("comments", c);
		
		int noticePageCount = cs.noticePageCount();
		int totalPage = noticePageCount / 10 + 1;
		if (noticePageCount % 10 == 0) {
			totalPage -= 1;
		}
		if (noticePageCount == 0) {
			totalPage = 0;
		}
		model.addAttribute("totalPage", totalPage);
		return "nonsession/mainnotice/notice";
	}

	
	
	
	
	// 공지사항 수정창으로 넘어가기
	@RequestMapping(value = "/session/noticeUpdate", method = RequestMethod.POST)
	public String noticeUpdate(Model model, HttpServletRequest request) {
		String commentNo = request.getParameter("commentNo");
		Comments c = cs.selectComment(Integer.parseInt(commentNo));

		model.addAttribute("comment", c);
		model.addAttribute("userNick", us.searchNickById(c.getUserId()));
		return "session/mainnotice/notice_change";
	}

	// 공지 삭제
	@RequestMapping(value = "/commentDelete", method = RequestMethod.POST)
	public String commentDelete(Model model, HttpServletRequest request, HttpSession session) {
		String commentNo = request.getParameter("commentNo");
		int result = cs.deleteComment(Integer.parseInt(commentNo));
		if (result == 1) {
			session.setAttribute("message", "정상 삭제 완료");
		}
		return "redirect:/notice?page=1";
	}

	// 공지 수정하기
	@RequestMapping(value = "/commentUpdate", method = RequestMethod.POST)
	public String commentUpdate(Model model, HttpServletRequest request) {
		String commentNo = request.getParameter("commentNo");
		String commentName = request.getParameter("TITLE");
		String commentContent = request.getParameter("CONTENTS");
		cs.updateComment(Integer.parseInt(commentNo), commentName, commentContent);
		return "redirect:/noticeView?commentNo=" + commentNo;
	}

	// 공지 쓰기 페이지로 넘어감
	@RequestMapping(value = "/session/noticeWrite", method = RequestMethod.GET)
	public String noticeWrtie(Model model) {
		logger.trace("notice write");
		return "session/mainnotice/notice_sign";
	}

	// 공지 쓰기
	@RequestMapping(value = "/commentWrite", method = RequestMethod.POST)
	public String commentWrite(Model model, HttpServletRequest request, HttpSession session) {
		String commentName = request.getParameter("title");
		String commentContent = request.getParameter("content");
		Users u = (Users)session.getAttribute("Users");
		String userId = u.getUserId();
		cs.writeNoticeComment(commentName, commentContent, userId);
		return "redirect:/notice?page=1";
	}

	// 쓰던 메인
	@RequestMapping("/mainpage2")
	public String mainpage(Model model) {
		return "nonsession/mainpage/mainPage";
	}

	
	
	
	
	
	
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
		List<String> result = us.SearchId(name, email);
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
		String result = us.SearchPass(id, name, email);
		if (result == null) {
			msg = "검색 결과가 없습니다.";
		} else {
			msg = "검색결과는 다음과 같습니다." + result + "";
		}
		model.addAttribute("message", msg);
		return "nonsession/join/joinok";
	}

}
