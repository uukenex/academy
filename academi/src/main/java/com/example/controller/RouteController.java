package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.dto.Goods;
import com.example.dto.Route;
import com.example.service.RouteService;
import com.example.service.UserService;

/**
 * 경로게시판
 *
 */
@Controller
public class RouteController {
	static Logger logger = LoggerFactory.getLogger(RouteController.class);

	@Autowired
	UserService us;
	@Autowired
	RouteService rs;

	//루트 불러오기(번호로)
	@RequestMapping(value = "/session/route", method = RequestMethod.GET)
	public String free(Model model, @RequestParam int routeNo
			,HttpSession session,@ModelAttribute Goods goods) {
		List<Goods> cart = new ArrayList<>();
		Route result = rs.selectRouteByNo(routeNo);
		String str = result.getRouteFull();
		int count = 0;
		for (int c = 0; c<str.length(); c++) {
			if (str.charAt(c) == '♬') {
				count++;
			}
		}
		int i = count/5;
		Goods goodss[] = new Goods[i];
		for(int cnt=0;cnt<i;cnt++){
			goodss[cnt]=new Goods();
		}
		
		String routeName[] = new String[i];
		String routeX[] = new String[i];
		String routeY[] = new String[i];
		String routeAddr[] = new String[i];
		String routeImg[] = new String[i];
		
		i = 0;
		StringTokenizer tokens = new StringTokenizer(str, "♬");
		while (tokens.hasMoreTokens()) {
			routeName[i] = tokens.nextToken();
			goodss[i].setTitle(routeName[i]);
			routeX[i] = tokens.nextToken();
			goodss[i].setLatitude(Double.parseDouble(routeX[i]));
			routeY[i] = tokens.nextToken();
			goodss[i].setLongitude(Double.parseDouble(routeY[i]));
			routeAddr[i] = tokens.nextToken();
			goodss[i].setAddress(routeAddr[i]);
			routeImg[i] = tokens.nextToken();
			goodss[i].setImageUrl(routeImg[i]);
			goodss[i].setCategory("여행");
			i++;
			
		}
		
		for(int cnt=0;cnt<i;cnt++){
			cart.add(goodss[cnt]);
		}
		
		logger.trace("list : {}",cart);
		session.setAttribute("cart",cart);
		return "session/guide/map_api";
	}

	
}
