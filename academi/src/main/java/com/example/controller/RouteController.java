package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.dto.Goods;
import com.example.dto.Route;
import com.example.service.RouteService;
import com.example.service.RouteServiceImpl;
import com.example.service.UserService;

/**
 * 경로게시판
 *
 */
@Controller
public class RouteController {
	static Logger logger = LoggerFactory.getLogger(RouteController.class);
	
	@Autowired
	RouteService rs;
	//review 테스트
	@RequestMapping(value ="/previewRoute", method = RequestMethod.GET)
	public @ResponseBody String previewRoute(Model model, HttpServletRequest request) {
		String RouteNo = request.getParameter("routeNumber");
		logger.trace("RouteNo :{}" , RouteNo);
		
		return RouteNo;
	}
	@RequestMapping(value ="/deleteRoute", method = RequestMethod.POST)
	public String deleteRoute(Model model, HttpServletRequest request) {
		String routeNo = request.getParameter("routeNo");
		logger.trace("{}",routeNo);
		rs.deleteRoute(Integer.parseInt(routeNo));
		return "redirect:/session/mypageRoute?page=1";
	}

	
}
