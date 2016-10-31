package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.dto.Users;

@Controller
public class PhotoBookController {
	static Logger logger = LoggerFactory.getLogger(PhotoBookController.class);
	
	//포토북 페이지로 들어감
	@RequestMapping(value = "/photoWrite")
	public String write(Model model, HttpSession session) {
		
		return "session/photobook/photo_sign";
	}
	
	
	@RequestMapping(value = "/myPhoto")
	public String myPhoto(Model model, HttpSession session) {
		Users users = (Users)session.getAttribute("Users");
		model.addAttribute("users",users);
		return "session/photobook/photo_sign";
	}
	
	
	
	
	//포토북 ajax
	private final String UPLOAD_DIR = "c:/Temp/";

	@RequestMapping(value = "/photo", method = RequestMethod.POST)
	public @ResponseBody List<List<String>> upload(@RequestParam List<MultipartFile> file)
			throws IllegalStateException, IOException {

		List<String> fileName = new ArrayList<>();
		List<String> fileNum = new ArrayList<>();
		List<List<String>> fileNumAndName = new ArrayList<>();
		for (int i = 0; i < file.size(); i++) {
			fileName.add(System.currentTimeMillis() + file.get(i).getOriginalFilename());
			fileNum.add(file.get(i).getOriginalFilename());
			File f = new File(UPLOAD_DIR + fileName.get(i));
			file.get(i).transferTo(f);

		}
		for (int i = 0; i < file.size(); i++) {
			logger.trace("경로 및 파일 : {}", UPLOAD_DIR + fileName.get(i));
		}

		fileNumAndName.add(fileName);
		fileNumAndName.add(fileNum);
		return fileNumAndName;
	}
}
