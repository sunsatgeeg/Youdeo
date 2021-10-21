package com.geeg.youdeo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value = "index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "404")
	public String error404() {
		return "404";
	}
	
	@RequestMapping(value = "account")
	public String account() {
		return "account";
	}

	@RequestMapping(value = "blank")
	public String blank() {
		return "blank";
	}

	@RequestMapping(value = "categories")
	public String categories() {
		return "categories";
	}

	@RequestMapping(value = "channels")
	public String channels() {
		return "channels";
	}

	@RequestMapping(value = "forgot_password")
	public String forgot_password() {
		return "forgot_password";
	}

	@RequestMapping(value = "history_page")
	public String history_page() {
		return "history_page";
	}

	@RequestMapping(value = "login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "register")
	public String register() {
		return "register";
	}

	@RequestMapping(value = "settings")
	public String settings() {
		return "settings";
	}

	@RequestMapping(value = "single_channel")
	public String single_channel() {
		return "single_channel";
	}

	@RequestMapping(value = "subscriptions")
	public String subscriptions() {
		return "subscriptions";
	}

	@RequestMapping(value = "upload_video")
	public String upload_video() {
		return "upload_video";
	}

	@RequestMapping(value = "upload")
	public String upload() {
		return "upload";
	}

	@RequestMapping(value = "video_page")
	public String video_page() {
		return "video_page";
	}
	
}