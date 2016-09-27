package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BasicController {

	@RequestMapping(value="/hello",method=RequestMethod.GET)
	public String sayHello(Model model){
		model.addAttribute("message","Good Morning");
		//사용할 view의 이름 리턴->View Resolver
		return "showMessage";
	}
}
