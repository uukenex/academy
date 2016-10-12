package com.example.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.model.Editor;
import com.example.service.UserService;

@Controller
public class THController {
	@Autowired
	UserService us;
	
	@RequestMapping(value = "/checkId", method = RequestMethod.GET)
	public @ResponseBody String checkId(@RequestParam String userId) {

		return "nonsession/login/id_find_success";
	}
}
