package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;

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
public class ReviewController {
	static Logger logger = LoggerFactory.getLogger(ReviewController.class);

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
	public String commentWrite(Model model, HttpServletRequest request, HttpSession session)
			throws IllegalStateException, IOException {

		String reviewTitle = request.getParameter("title");
		String reviewContent0 = request.getParameter("content0");
		String reviewContent1 = request.getParameter("content1");
		String reviewContent2 = request.getParameter("content2");
		String reviewContent3 = request.getParameter("content3");
		String reviewContent4 = request.getParameter("content4");
		String reviewContent5 = request.getParameter("content5");
		String reviewContent6 = request.getParameter("content6");
		String reviewContent7 = request.getParameter("content7");
		String reviewContent8 = request.getParameter("content8");
		String reviewContent9 = request.getParameter("content9");

		
		List<String> strContent = new ArrayList<>();
		if (reviewContent0 != null
				&& !reviewContent0.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent0);
		}
		if (reviewContent1 != null
				&& !reviewContent1.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent1);
		}
		if (reviewContent2 != null
				&& !reviewContent2.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent2);
		}
		if (reviewContent3 != null
				&& !reviewContent3.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent3);
		}
		if (reviewContent4 != null
				&& !reviewContent4.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent4);
		}
		if (reviewContent5 != null
				&& !reviewContent5.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent5);
		}
		if (reviewContent6 != null
				&& !reviewContent6.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent6);
		}
		if (reviewContent7 != null
				&& !reviewContent7.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent7);
		}
		if (reviewContent8 != null
				&& !reviewContent8.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent8);
		}
		if (reviewContent9 != null
				&& !reviewContent9.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent9);
		}

		String[] contentArr = new String[10];
		for (int i = 0; i < strContent.size(); i++) {
			contentArr[i] = strContent.get(i);
		}
		for (int i = strContent.size(); i < 9; i++) {
			contentArr[i] = null;
		}
		int routeNo = Integer.parseInt(request.getParameter("routeNo"));
		Users u = (Users) session.getAttribute("Users");
		String userId = u.getUserId();

		// 이미지의 경로가 저장되도록
		rs.insertReview(reviewTitle, contentArr[0], contentArr[1], contentArr[2], contentArr[3], contentArr[4],
				contentArr[5], contentArr[6], contentArr[7], contentArr[8], contentArr[9], "", routeNo, userId);

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
		String reviewTitle = request.getParameter("title");
		String reviewContent0 = request.getParameter("content0");
		String reviewContent1 = request.getParameter("content1");
		String reviewContent2 = request.getParameter("content2");
		String reviewContent3 = request.getParameter("content3");
		String reviewContent4 = request.getParameter("content4");
		String reviewContent5 = request.getParameter("content5");
		String reviewContent6 = request.getParameter("content6");
		String reviewContent7 = request.getParameter("content7");
		String reviewContent8 = request.getParameter("content8");
		String reviewContent9 = request.getParameter("content9");

		List<String> strContent = new ArrayList<>();
		if (reviewContent0 != null
				&& !reviewContent0.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent0);
		}
		if (reviewContent1 != null
				&& !reviewContent1.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent1);
		}
		if (reviewContent2 != null
				&& !reviewContent2.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent2);
		}
		if (reviewContent3 != null
				&& !reviewContent3.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent3);
		}
		if (reviewContent4 != null
				&& !reviewContent4.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent4);
		}
		if (reviewContent5 != null
				&& !reviewContent5.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent5);
		}
		if (reviewContent6 != null
				&& !reviewContent6.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent6);
		}
		if (reviewContent7 != null
				&& !reviewContent7.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent7);
		}
		if (reviewContent8 != null
				&& !reviewContent8.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent8);
		}
		if (reviewContent9 != null
				&& !reviewContent9.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent9);
		}

		String[] contentArr = new String[10];
		logger.trace("strContent : {}", strContent);
		logger.trace("length : {}", strContent.size());
		for (int i = 0; i < strContent.size(); i++) {
			contentArr[i] = strContent.get(i);
		}
		for (int i = strContent.size(); i < 9; i++) {
			contentArr[i] = null;
		}

		int routeNo = Integer.parseInt(request.getParameter("routeNo"));
		rs.updateReview(Integer.parseInt(reviewNo), reviewTitle, contentArr[0], contentArr[1], contentArr[2],
				contentArr[3], contentArr[4], contentArr[5], contentArr[6], contentArr[7], contentArr[8], contentArr[9],
				"", routeNo);
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

	// 경로 새로만들기로 연결

	@RequestMapping(value = "/session/newMap", method = RequestMethod.GET)
	public String NewMap(Model model) {
		return "session/postscript/new_map";
	}

	// 경로 있는것중에 선택하기
	@RequestMapping(value = "/session/existMap", method = RequestMethod.GET)
	public String ExistMap(Model model) {
		return "session/postscript/exist_map";
	}

}
