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

import com.example.dto.Qna;
import com.example.dto.Review;
import com.example.dto.ReviewReply;
import com.example.dto.Users;
import com.example.service.AnswerService;
import com.example.service.QnaService;

/**
 * 후기게시판
 *
 */
@Controller
public class QnaController {
	static Logger logger = LoggerFactory.getLogger(QnaController.class);

	@Autowired
	QnaService qs;
	@Autowired
	AnswerService as;
	// qna 게시판 리스트 보기
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String free(Model model, @RequestParam int page, HttpSession session) {
		List<Qna> q = qs.qnaListByPage(page);
		model.addAttribute("qnas", q);
		int pageCount = qs.pageCount();
		int totalPage = pageCount / 10 + 1;
		if (pageCount % 10 == 0) {
			totalPage -= 1;
		}
		if (pageCount == 0) {
			totalPage = 0;
		}
		model.addAttribute("totalPage", totalPage);
		return "nonsession/q&a/qna";
	}
/*
	// qna -단일게시물 보기
	@RequestMapping(value = "/postView", method = RequestMethod.GET)
	public String noticeView(Model model, @RequestParam int reviewNo) {
		rs.count(reviewNo);
		Review r = rs.selectReview(reviewNo);
		List<ReviewReply> rr = rrs.selectReplyList(reviewNo);
		model.addAttribute("post", r);
		model.addAttribute("replys", rr);
		return "nonsession/postscript/post_view";
	}

	// 리뷰 댓글 ajax
	@RequestMapping(value = "/session/replyRegist2", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> ajaxreply(@RequestParam String userId, @RequestParam String replyContent,
			@RequestParam int reviewNo, HttpSession session) {
		Map<String, String> resultMap = null;
		int result = rrs.insertReply(replyContent, reviewNo, userId);
		if (result == 1) {
			resultMap = new HashMap<>();
			resultMap.put("id", userId);
			resultMap.put("content", replyContent);
		}
		return resultMap;
	}

	// 리뷰 쓰기 페이지로 넘어감
	@RequestMapping(value = "/session/postsign", method = RequestMethod.GET)
	public String noticeWrtie(Model model) {
		return "session/postscript/post_sign";
	}

	// 리뷰 글 쓰기
	@RequestMapping(value = "/postWrite", method = RequestMethod.POST)
	public String commentWrite(Model model, HttpServletRequest request, HttpSession session) {
		String reviewTitle = request.getParameter("title");
		String reviewContent = request.getParameter("content");
		int routeNo = Integer.parseInt(request.getParameter("routeNo"));
		Users u = (Users) session.getAttribute("Users");
		String userId = u.getUserId();
		rs.insertReview(reviewTitle, reviewContent, routeNo, userId);
		return "redirect:/post?page=1";
	}

	// 리뷰 수정창으로 넘어가기
	@RequestMapping(value = "/session/postUpdate", method = RequestMethod.POST)
	public String noticeUpdate(Model model, HttpServletRequest request) {
		String reviewNo = request.getParameter("reviewNo");
		Review r = rs.selectReview(Integer.parseInt(reviewNo));
		model.addAttribute("review", r);
		return "session/postscript/change_post";
	}

	// 리뷰 수정하기
	@RequestMapping(value = "/reviewUpdate", method = RequestMethod.POST)
	public String commentUpdate(Model model, HttpServletRequest request) {
		String reviewNo = request.getParameter("reviewNo");
		String reviewTitle = request.getParameter("TITLE");
		String reviewContent = request.getParameter("CONTENTS");
		int routeNo = Integer.parseInt(request.getParameter("routeNo"));
		rs.updateReview(Integer.parseInt(reviewNo), reviewTitle, reviewContent, routeNo);
		return "redirect:/postView?reviewNo=" + reviewNo;
	}

	// qna 삭제
	@RequestMapping(value = "/reviewDelete", method = RequestMethod.POST)
	public String commentDelete(Model model, HttpServletRequest request, HttpSession session) {
		String reviewNo = request.getParameter("reviewNo");
		int result = qs.deleteReview(Integer.parseInt(reviewNo));
		if (result == 1) {
			session.setAttribute("message", "정상 삭제 완료");
		}
		return "redirect:/post?page=1";
	}*/



	
}
