package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JunsukController {

	@RequestMapping(value="/naverboard",method=RequestMethod.GET)
	public String board(Model model){
		return "naver";
	}
}