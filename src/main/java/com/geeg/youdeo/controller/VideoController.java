package com.geeg.youdeo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.user.User;
import com.geeg.youdeo.user.UserService;
import com.geeg.youdeo.video.Video;
import com.geeg.youdeo.video.VideoDao;
import com.geeg.youdeo.video.VideoService;

@Controller
public class VideoController {
	@Autowired
	private VideoService videoService;
	@Autowired
	private UserService userService;
	
	private final String path="/video/";

	@RequestMapping(value = "testT")
	public String testT(@RequestParam String fileName, Model model) {
		model.addAttribute("fileName",fileName);
				
		return "testT";
	}
	
	@RequestMapping(value = "watch", params ="!v_no")
	public String watch() throws Exception {
		return "redirect:404";
	}
	
	@RequestMapping(value = "watch", params ="v_no")
	public String watch(@RequestParam int v_no, Model model, HttpServletResponse response) throws Exception {
		Video video = videoService.findVideo(v_no);
		model.addAttribute("video", video);
		return "watch";
	}
	
	@LoginCheck
	@RequestMapping(value = "test_stream_client")
	public String test_stream_client(@RequestParam(required = false) String u_id, Model model,HttpSession session) {
		String sUserId = (String)session.getAttribute("sUserId");
		model.addAttribute("sUserId", sUserId);
		model.addAttribute("streamerId", u_id);
		return "test_stream_client";
	}
	
	@LoginCheck
	@RequestMapping(value = "remove_data")
	public void remove_data(@RequestParam(required = false) String fileName, HttpServletRequest request) {
		System.out.println(fileName);
		if((!fileName.equals("") || fileName != "")) {
			try {
				fileName = fileName.substring(0,fileName.lastIndexOf("."));
				File file = new File(request.getSession().getServletContext().getRealPath(path), fileName);
				file.delete();
			}catch (Exception e) {
				
				System.out.println("\t" + e + " : 영상 업로드 도중 취소");
			}
		}
	}
	
	@LoginCheck
	@PostMapping(value = "upload_video_action")
	public String upload_video_action(@RequestParam String uuidFile,
								      @RequestParam String v_title,
								      @RequestParam String v_description,
								      @RequestParam String v_category,
								      @RequestParam String v_tag,
								      Model model,
								      HttpServletRequest request,
								      HttpSession session) throws Exception {
		String uploadPath = request.getSession().getServletContext().getRealPath(path);
		System.out.println("\tuploadpath : " + uploadPath);
		
		uuidFile = uuidFile.toLowerCase();
		String originalFileName = uuidFile.substring(0,uuidFile.lastIndexOf("."));
		String extName = uuidFile.substring(uuidFile.lastIndexOf("."), uuidFile.length());
		
		if((!uuidFile.equals("") || uuidFile != "") && (extName.equals(".mov") || extName.equals(".mpeg-1") || extName.equals(".mpeg-2") || extName.equals(".mp4") || extName.equals(".mpg") || extName.equals(".avi") || extName.equals(".wmv") || extName.equals(".mpegps") || extName.equals(".webm") || extName.equals(".flv"))) {
			String sUserId = (String)session.getAttribute("sUserId");
			
			Map map = new HashMap();
			map.put("v_title", v_title);
			map.put("v_description", v_description);
			map.put("v_category", v_category);
			map.put("u_id", sUserId);
			map.put("v_tag", v_tag);
			map.put("v_no", 0);
			
			videoService.create(map);
			int videoNo = (Integer)map.get("v_no");
			
			System.out.println(videoNo);
			
			String saveFileName = videoNo + extName;
			boolean result = new File(uploadPath, originalFileName).renameTo(new File(uploadPath, saveFileName));
			
			if(result) {
				return "redirect:watch?v_no="+videoNo;
			}
		}
		
		return "redirect:index";
	}
	
	
	
}
