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
import com.example.dto.Review;
import com.example.dto.ReviewReply;
import com.example.dto.Users;
import com.example.service.ReviewReplyService;
import com.example.service.ReviewService;
import com.example.service.UserService;

/**
 * 후기게시판
 *
 */
@Controller
public class TH3Controller {
	static Logger logger = LoggerFactory.getLogger(TH3Controller.class);

	@Autowired
	UserService us;
	@Autowired
	ReviewService rs;
	@Autowired
	ReviewReplyService rrs;

	// 후기게시판 리스트 보기
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String free(Model model, @RequestParam int page, HttpSession session) {
		List<Review> r = rs.reviewListByPage(page);
		model.addAttribute("posts", r);

		int pageCount = rs.pageCount();
		int totalPage = pageCount / 16 + 1;
		if (pageCount % 16 == 0) {
			totalPage -= 1;
		}
		if (pageCount == 0) {
			totalPage = 0;
		}
		model.addAttribute("totalPage", totalPage);
		return "nonsession/postscript/post_main";
	}

	// 후기 -단일게시물 보기
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

	// 리뷰 삭제
	@RequestMapping(value = "/reviewDelete", method = RequestMethod.POST)
	public String commentDelete(Model model, HttpServletRequest request, HttpSession session) {
		String reviewNo = request.getParameter("reviewNo");
		int result = rs.deleteReview(Integer.parseInt(reviewNo));
		if (result == 1) {
			session.setAttribute("message", "정상 삭제 완료");
		}
		return "redirect:/post?page=1";
	}

	// 리뷰 추천하기 기능 ajax
	@RequestMapping(value = "/session/star", method = RequestMethod.GET)
	public @ResponseBody int ajaxstar(@RequestParam int reviewNo, HttpSession session) {
		int result = rs.updateStar(reviewNo);
		logger.trace("추천된 결과값 : {}", result);
		return result;
	}

	
}
