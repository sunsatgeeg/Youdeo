package com.geeg.youdeo.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.user.User;
import com.geeg.youdeo.user.UserService;

@RestController
public class UserRestController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/u_id_duplicate_check_rest", produces = "text/plain;charset=UTF-8")
	public String u_id_duplicate_check(@RequestParam String u_id) throws Exception{
		boolean isDuplicate= userService.isDuplcateUserId(u_id);
		return !isDuplicate+"";
	}
	
	@LoginCheck
	@PostMapping(value = "profile_image_upload_action", produces = "text/plain;charset=UTF-8")
	public String profile_image_upload_action(@RequestParam("profileAttachFile") MultipartFile multiFile, Model model, MultipartHttpServletRequest request, HttpSession session) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/img/user");
		//System.out.println("\tuploadpath : " + uploadPath);
		
		String originalFileName = multiFile.getOriginalFilename().toLowerCase();
		String extName = originalFileName.substring(originalFileName.lastIndexOf("."), originalFileName.length());
		String saveFileName = sUserId + extName;
		
		if(!multiFile.isEmpty() && (extName.equals(".jpg") || extName.equals(".jpeg") || extName.equals(".png"))) {
			if(!userService.findUser(sUserId).getU_profileimg().equals("none.png")) {
				new File(uploadPath, userService.findUser(sUserId).getU_profileimg()).delete();
			}
			
			File file = new File(uploadPath, saveFileName);
			
			multiFile.transferTo(file);
			
			int reulst = userService.updateProfileImage(new User(sUserId, null, null, null, null, saveFileName, null, 0));
			
			if(reulst == 1) {
				session.setAttribute("sUserImage", saveFileName);
				return "true";
			}
		}
		
		return "false";
	}
	
	@LoginCheck
	@PostMapping(value = "banner_image_upload_action", produces = "text/plain;charset=UTF-8")
	public String banner_image_upload_action(@RequestParam("bannerAttachFile") MultipartFile multiFile, Model model, MultipartHttpServletRequest request, HttpSession session) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/img/user");
		//System.out.println("\tuploadpath : " + uploadPath);
		
		String originalFileName = multiFile.getOriginalFilename().toLowerCase();
		String extName = originalFileName.substring(originalFileName.lastIndexOf("."), originalFileName.length());
		String saveFileName = sUserId + "_b" + extName;
		
		if(!multiFile.isEmpty() && (extName.equals(".jpg") || extName.equals(".jpeg") || extName.equals(".png"))) {
			if(!userService.findUser(sUserId).getU_profileimg().equals("none_b.png")) {
				new File(uploadPath, userService.findUser(sUserId).getU_bannerimg()).delete();
			}
			
			File file = new File(uploadPath, saveFileName);
			
			multiFile.transferTo(file);
			
			int result = userService.updateBannerImage(new User(sUserId, null, null, null, null, null, saveFileName, 0));
			
			System.out.println(result);
			
			if(result == 1) {
				return "true";
			}
		}
		
		return "false";
	}
	
}
