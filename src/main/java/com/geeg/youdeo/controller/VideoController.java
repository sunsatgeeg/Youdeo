package com.geeg.youdeo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.geeg.youdeo.user.User;
import com.geeg.youdeo.video.Video;
import com.geeg.youdeo.video.VideoService;

@Controller
public class VideoController {
	@Autowired
	private VideoService videoService;
	
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
	
	
}
