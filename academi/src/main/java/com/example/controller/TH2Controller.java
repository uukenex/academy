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

import com.example.dto.CommentReply;
import com.example.dto.Comments;
import com.example.dto.Users;
import com.example.service.CommentReplyService;
import com.example.service.CommentService;
import com.example.service.UserService;

/**
 * 자유게시판 ,댓글 ajax
 *
 */
@Controller
public class TH2Controller {
	static Logger logger = LoggerFactory.getLogger(TH2Controller.class);

	@Autowired
	UserService us;
	@Autowired
	CommentService cs;
	@Autowired
	CommentReplyService crs;

	// 자유게시판 리스트 보기
	@RequestMapping(value = "/free", method = RequestMethod.GET)
	public String free(Model model, @RequestParam int page, HttpSession session) {
		List<Comments> c = cs.freeListByPage(page);
		model.addAttribute("comments", c);

		int freePageCount = cs.freePageCount();
		int totalPage = freePageCount / 10 + 1;
		if (freePageCount % 10 == 0) {
			totalPage -= 1;
		}
		if (freePageCount == 0) {
			totalPage = 0;
		}
		model.addAttribute("totalPage", totalPage);
		return "nonsession/freeboard/freeboard";
	}

	// 자유 -단일게시물 보기
	@RequestMapping(value = "/freeView", method = RequestMethod.GET)
	public String noticeView(Model model, @RequestParam int commentNo) {
		cs.count(commentNo);
		List<CommentReply> r = crs.selectReplyList(commentNo);
		Comments c = cs.selectComment(commentNo);
		model.addAttribute("comment", c);
		model.addAttribute("replys", r);
		return "nonsession/freeboard/freeboard_view";
	}

	// 공지 쓰기 페이지로 넘어감
	@RequestMapping(value = "/session/boardsign", method = RequestMethod.GET)
	public String noticeWrtie(Model model) {
		return "session/freeboard/freeboard_sign";
	}

	// 자유게시판 글 쓰기
	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	public String commentWrite(Model model, HttpServletRequest request, HttpSession session) {
		String commentName = request.getParameter("title");
		String commentContent = request.getParameter("content");
		Users u = (Users) session.getAttribute("Users");
		String userId = u.getUserId();
		cs.writeFreeComment(commentName, commentContent, userId);
		return "redirect:/free?page=1";
	}

	// 공지사항 수정창으로 넘어가기
	@RequestMapping(value = "/session/freeUpdate", method = RequestMethod.POST)
	public String noticeUpdate(Model model, HttpServletRequest request) {
		String commentNo = request.getParameter("commentNo");
		Comments c = cs.selectComment(Integer.parseInt(commentNo));
		model.addAttribute("comment", c);
		return "session/freeboard/freeboard_change";
	}

	// 공지 수정하기
	@RequestMapping(value = "/freeUpdate", method = RequestMethod.POST)
	public String commentUpdate(Model model, HttpServletRequest request) {
		String commentNo = request.getParameter("commentNo");
		String commentName = request.getParameter("TITLE");
		String commentContent = request.getParameter("CONTENTS");
		cs.updateComment(Integer.parseInt(commentNo), commentName, commentContent);
		return "redirect:/freeView?commentNo=" + commentNo;
	}

	// 공지 삭제
	@RequestMapping(value = "/freeDelete", method = RequestMethod.POST)
	public String commentDelete(Model model, HttpServletRequest request, HttpSession session) {
		String commentNo = request.getParameter("commentNo");
		int result = cs.deleteComment(Integer.parseInt(commentNo));
		if (result == 1) {
			session.setAttribute("message", "정상 삭제 완료");
		}
		return "redirect:/free?page=1";
	}

	@RequestMapping(value = "/session/replyRegist", method = RequestMethod.POST)
	public @ResponseBody Map<String,String> ajaxreply(@RequestParam String userId, @RequestParam String replyContent,
			@RequestParam int commentNo, HttpSession session) {
		Map<String, String> resultMap = null;
		int result = crs.insertReply(replyContent, commentNo, userId);
		if (result == 1) {
			resultMap = new HashMap<>();
			resultMap.put("id", userId);
			resultMap.put("content", replyContent);
		}
		return resultMap;
	}
}
