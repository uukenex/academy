package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
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
	@RequestMapping(value = "/session/myPhoto" ,method=RequestMethod.GET)
	public String myPhoto(Model model, HttpSession session,@RequestParam String userId,@RequestParam String folderName) {
		Users users = (Users) session.getAttribute("Users");
		model.addAttribute("users", users);
		model.addAttribute("folderName",folderName);
		return "session/photobook/photo_sign";
	}

	// 포토북 업로드 ajax
	private final String UPLOAD_DIR = "c:/Temp/";

	@RequestMapping(value = "/photo", method = RequestMethod.POST)
	public @ResponseBody List<List<String>> upload(@RequestParam List<MultipartFile> file
			,@RequestParam String userId,@RequestParam String folderName)
			throws IllegalStateException, IOException {
		List<String> fileName = new ArrayList<>();
		List<String> fileNum = new ArrayList<>();
		List<List<String>> fileNumAndName = new ArrayList<>();
		
		for (int i = 0; i < file.size(); i++) {
			 
			fileName.add(System.currentTimeMillis() + file.get(i).getOriginalFilename());
			fileNum.add(file.get(i).getOriginalFilename());
			File f = new File(UPLOAD_DIR +userId+"/"+folderName+"/"+ fileName.get(i));
			file.get(i).transferTo(f);

		}
		for (int i = 0; i < file.size(); i++) {
			logger.trace("경로 및 파일 : {}", UPLOAD_DIR +userId+"/"+folderName+"/"+ fileName.get(i));
		}

		fileNumAndName.add(fileName);
		fileNumAndName.add(fileNum);
		return fileNumAndName;
	}

	// 포토북 새폴더 만들기ajax
	@RequestMapping(value = "/newfolder", method = RequestMethod.POST)
	public @ResponseBody boolean newFoler(@RequestParam String userId, @RequestParam String name,
			HttpServletRequest request) throws IllegalStateException, IOException {
		File dir = new File(UPLOAD_DIR + userId + "/" + name + "/");
		boolean result = false;
		if (!dir.isDirectory()) {
			// 디렉토리가 없으면 생성
			result = dir.mkdirs();
			logger.trace("{} 생성", dir);
		} else {
			logger.trace("{}이 이미 존재함", dir);
		}
		return result;
	}

	// 포토북 아이디로  지정된 폴더들 가져오기 ajax
	@RequestMapping(value = "/loadfolder", method = RequestMethod.POST)
	public @ResponseBody List<List<String>> loadfolder(@RequestParam String userId,
			@RequestParam String folderName,
			HttpServletRequest request) throws IllegalStateException, IOException {
		logger.trace("경로:{}",userId+folderName);
		String path;
		
		File dir = new File(UPLOAD_DIR + userId + "/");
		boolean result = false;
		if (!dir.isDirectory()) {
			// 디렉토리가 없으면 생성
			result = dir.mkdirs();
			logger.trace("{} 생성", dir);
		} else {
			logger.trace("{}이 이미 존재함", dir);
		}
		
		if(folderName!=null && !folderName.equals("")){
		path = UPLOAD_DIR + userId + "/"+folderName + "/";
		}
		else{
		path= UPLOAD_DIR + userId + "/";
		}
		File dirFile=new File(path);
		File []fileList=dirFile.listFiles();
		
		
		List<String> files = new ArrayList<>();
		List<String> folders = new ArrayList<>();
		List<List<String>> filesAndFolders = new ArrayList<>();
		for(int i=0; i<fileList.length; i++)
		{
			int pos = fileList[i].getName().lastIndexOf( "." );
			String ext = fileList[i].getName().substring( pos + 1 );
			if(ext.equals("jpg"))
			{		
				files.add(fileList[i].getName());
			}
			else{
				folders.add(fileList[i].getName());
			}
		}
		
		filesAndFolders.add(files);
		filesAndFolders.add(folders);
		return filesAndFolders;
	}
}
