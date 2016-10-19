package com.example.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dto.Answer;
import com.example.dto.Comments;
import com.example.dto.Qna;
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
		return "nonsession/qna/qna";
	}

	// qna -단일게시물 보기
	@RequestMapping(value = "/qnaView", method = RequestMethod.GET)
	public String noticeView(Model model, @RequestParam int qnaNo) {
		qs.count(qnaNo);
		Qna q = qs.selectQna(qnaNo);
		List<Answer> a = as.selectListByQnaNo(qnaNo);
		model.addAttribute("qna", q);
		model.addAttribute("answers", a);
		return "nonsession/qna/qnaview";
	}
	// 질문 쓰기 페이지로 넘어감
	@RequestMapping(value = "/session/qnaQuestion", method = RequestMethod.GET)
	public String noticeWrtie(Model model) {
		return "session/qna/question";
	}

	// 리뷰 글 쓰기
	@RequestMapping(value = "/qnaWrite", method = RequestMethod.POST)
	public String commentWrite(Model model, HttpServletRequest request, HttpSession session) {
		String qnaTitle = request.getParameter("title");
		String qnaQuestion = request.getParameter("content");
		int routeNo = Integer.parseInt(request.getParameter("routeNo"));
		Users u = (Users) session.getAttribute("Users");
		String userId = u.getUserId();
		qs.insertQna(qnaTitle, qnaQuestion, userId);
		return "redirect:/qna?page=1";
	}
/*
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

	//검색기능(qna게시판) ajax 카테고리와 검색키워드를 받아옴
		@RequestMapping(value="/search3",method=RequestMethod.POST)
		public @ResponseBody List<Qna> ajaxsearch(
				@RequestParam String category,
				@RequestParam String keyword,Model model){
			List<Qna> result = new ArrayList<>();
			logger.trace("여기오다");
			if(category.equals("제목")){
				result = qs.searchQnaByName(keyword, 1);
			}
			else if(category.equals("내용")){
				result = qs.searchQnaByContent(keyword, 1);
			}
			else if(category.equals("닉네임")){
				result = qs.searchQnaByNick(keyword, 1);
			}
			logger.trace("{}",result);
			return result;
		}

	
}
