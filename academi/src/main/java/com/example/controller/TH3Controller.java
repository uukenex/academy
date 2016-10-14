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

import com.example.dto.Review;
import com.example.service.ReviewReplyService;
import com.example.service.ReviewService;
import com.example.service.UserService;

/**
 * 
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

	
}
