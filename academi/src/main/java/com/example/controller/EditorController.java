package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.service.UserService;

@Controller
public class EditorController {
	

	@RequestMapping(value = "/editortest", method = RequestMethod.GET)
	public String navertest(Model model) {
		return "write";
	}
	

}
