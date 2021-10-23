package com.geeg.youdeo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.geeg.youdeo.controller.interceptor.LoginCheck;

@Controller
public class IndexController {
	
	@RequestMapping(value = "index")
	public String index() {
		
		return "index";
	}
	
	
	
}
