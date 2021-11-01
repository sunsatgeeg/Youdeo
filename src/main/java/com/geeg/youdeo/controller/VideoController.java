package com.geeg.youdeo.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.user.User;
import com.geeg.youdeo.user.UserService;
import com.geeg.youdeo.video.Video;
import com.geeg.youdeo.video.VideoService;

@Controller
public class VideoController {
	@Autowired
	private VideoService videoService;
	@Autowired
	private UserService userService;
	
	private String path="/video";
	
	
	@RequestMapping(value = "watch", params ="!v_no")
	public String watch() throws Exception {
		return "404";
	}
	
	@RequestMapping(value = "watch", params ="v_no")
	public String watch(@RequestParam int v_no, Model model) throws Exception {
		Video video = videoService.findVideo(v_no);
		model.addAttribute("video", video);
		return "watch";
	}
	
	@LoginCheck
	@RequestMapping(value = "test_stream_client")
	public String test_stream_client(Model model,HttpSession session) {
		String sUserId = (String)session.getAttribute("sUserId");
		model.addAttribute("sUserId", sUserId);
		return "test_stream_client";
	}
	
	@LoginCheck
	@PostMapping(value = "upload_video", produces = "text/plain;charset=UTF-8")
	public String upload_video(@RequestParam("videoAttachFile") MultipartFile multiFile, Model model, MultipartHttpServletRequest request, HttpSession session) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		
		String uploadPath = request.getSession().getServletContext().getRealPath(path);
		//System.out.println("\tuploadpath : " + uploadPath);
		
		String originalFileName = multiFile.getOriginalFilename().toLowerCase();
		String extName = originalFileName.substring(originalFileName.lastIndexOf("."), originalFileName.length());
		String saveFileName = sUserId + extName;
		
		if(!multiFile.isEmpty() && (extName.equals(".mov") || extName.equals(".mpeg-1") || extName.equals(".mpeg-2") || extName.equals(".mp4") || extName.equals(".mpg") || extName.equals(".avi") || extName.equals(".wmv") || extName.equals(".mpegps") || extName.equals(".flv"))) {
			File file = new File(uploadPath, saveFileName);
			
			multiFile.transferTo(file);
			
			int result = videoService.create(null);
			
			System.out.println(result);
			
			if(result == 1) {
				return "true";
			}
		}
		
		return "upload_video";
	}
	
	
	
}
