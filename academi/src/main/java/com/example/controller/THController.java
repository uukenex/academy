package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class THController {
	@RequestMapping(value="/photoUpload",method=RequestMethod.POST)
	public String board(Model model){
		return "file_uploader_html";
	}
	
	@RequestMapping(value="/multiplePhotoUpload",method=RequestMethod.POST)
	public String board2(Model model){
		return "file_uploader_html5";
	}
	
}
