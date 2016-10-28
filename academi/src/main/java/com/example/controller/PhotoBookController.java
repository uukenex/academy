package com.example.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.service.UserService;

@Controller
public class PhotoBookController {
	
	private final String UPLOAD_DIR="c:/Temp/";
	//@RequestParam List<MultipartFile> uploadFile,
	/*List<String> picArr = new ArrayList<>();
	for(int i=0;i<uploadFile.size();i++){
	picArr.add(System.currentTimeMillis()+uploadFile.get(i).getOriginalFilename());
	File file = new File(UPLOAD_DIR+picArr.get(i));
	
	uploadFile.get(i).transferTo(file);
	model.addAttribute("fileName"+i,picArr.get(i));
	}
	for(int i=0;i<uploadFile.size();i++){
	logger.trace("경로 및 파일 : {}",UPLOAD_DIR+picArr.get(i));
	}*/

}
