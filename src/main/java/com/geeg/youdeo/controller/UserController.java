package com.geeg.youdeo.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private VideoService videoService;
	
	private String path="C:\\spring_server\\img";
		
	
	@RequestMapping(value = "user", params ="!u_id")
	public String watch() throws Exception {
		return "redirect:404";
	}
	
	@RequestMapping(value = "user", params ="u_id")
	public String user(@RequestParam String u_id, Model model) throws Exception{
		User user = userService.findUser(u_id);
		List<Video> videoList = videoService.findChannelVideoList(u_id);
		
		model.addAttribute("user", user);
		model.addAttribute("videoList", videoList);
		
		return "user";
	}
	
	@RequestMapping(value = "login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "register")
	public String register() {
		return "register";
	}

	@PostMapping(value = "login_action")
	public String login_action_post(@ModelAttribute User user, HttpSession session, Model model) throws Exception {
		String forwardPath = "";
		
		int result = userService.login(user.getU_id(), user.getU_password());
		if(result == 0) {
			model.addAttribute("errorcode", 0);
			model.addAttribute("fuser", user);
			forwardPath="login";
		}else if(result == 1) {
			model.addAttribute("errorcode", 1);
			model.addAttribute("fuser", user);
			forwardPath="login";
		}else if(result == 2) {
			session.setAttribute("sUserId", user.getU_id());
			session.setAttribute("sUserImage", userService.findUser(user.getU_id()).getU_profileimg());
			forwardPath = "redirect:index";
		}
		
		return forwardPath; 
	}
	
	@GetMapping(value = "login_action")
	public String login_action_get() {
		return "redirect:index";
	}
	
	@LoginCheck
	@RequestMapping(value = "logout_action")
	public String logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}
	
	@PostMapping(value = "register_action")
	public String register_action(@ModelAttribute User user, HttpSession session, Model model) throws Exception{
		String forwardPath = "";
		
		int result = userService.create(user);
		if(result == -1) {
			model.addAttribute("msg1", "사용할 수 없는 아이디입니다.");
			model.addAttribute("fuser",user);
			forwardPath = "register";
		}else {
			forwardPath = "login";
		}
		
		return forwardPath;
	}
	
	@GetMapping(value = "register_action")
	public String register_action() {
		return "redirect:register";
	}
	
	@LoginCheck
	@RequestMapping(value = "settings")
	public String settings(HttpSession session, Model model) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		
		User user = userService.findUser(sUserId);
		
		model.addAttribute("user", user);
		
		return "settings";
	}
	
	@GetMapping(value = "profile_image_upload_action")
	public String profile_image_upload_action() {
		return "redirect:404";
	}
	
	@GetMapping(value = "banner_image_upload_action")
	public String banner_image_upload_action() {
		return "redirect:404";
	}
}
