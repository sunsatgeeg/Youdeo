package com.geeg.youdeo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
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

import com.geeg.youdeo.comment.Comment;
import com.geeg.youdeo.comment.CommentService;
import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.subscription.Subscription;
import com.geeg.youdeo.subscription.SubscriptionService;
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
	@Autowired
	private SubscriptionService subscriptionService;
	@Autowired
	private CommentService commentService;
	
	private final String path="/video/";

	@LoginCheck
	@RequestMapping(value = "subscriptions")
	public String testT(HttpSession session, Model model) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		
		Map map = new HashMap();
		map.put("u_id", sUserId);
		map.put("start_no", 1);
		map.put("end_no", 24);
		List<Video> subVideoList = videoService.findSubscriptionVideoList(map);
		
		model.addAttribute("subVideoList",subVideoList);
		model.addAttribute("vidLastNo", subVideoList.size());
		
		return "subscriptions";
	}
	
	@RequestMapping(value = "watch", params ="!v_no")
	public String watch() throws Exception {
		return "redirect:404";
	}
	
	@RequestMapping(value = "watch", params ="v_no")
	public String watch(@RequestParam int v_no, Model model, HttpServletResponse response) throws Exception {
		videoService.updateViewCount(v_no);
		Video video = videoService.findVideo(v_no);
		Map map = new HashMap();
		map.put("start_no", 1);
		map.put("end_no",13);
		List<Video> videoList = videoService.findVideoList(map);
		Subscription subscription = subscriptionService.findSubscriptionCount(video.getUser().getU_id());
		map = new HashMap();
		map.put("v_no",v_no);
		map.put("last_no",1);
		List<Comment> commentList = commentService.findCommentOrderDateList(map);
		
		model.addAttribute("video", video);
		model.addAttribute("videoList", videoList);
		model.addAttribute("cmtList", commentList);
		model.addAttribute("sub", subscription);
		model.addAttribute("vidLastNo", videoList.size()+1);
		model.addAttribute("cmtLastNo", commentList.size());
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
	@RequestMapping(value = "upload_video")
	public String upload_video() {
		return "upload_video";
	}
	
	@LoginCheck
	@PostMapping(value = "upload_video_action")
	public String upload_video_action(@RequestParam String uuidFile,
								      @RequestParam int videoPlayTime,
								      @RequestParam String v_title,
								      @RequestParam String v_description,
								      @RequestParam String v_category,
								      @RequestParam String v_tag,
								      Model model,
								      HttpServletRequest request,
								      HttpSession session) throws Exception {
		String uploadPath = request.getSession().getServletContext().getRealPath(path);
		//System.out.println("\tuploadpath : " + uploadPath);
		
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
			map.put("v_time", videoPlayTime);
			map.put("v_uuid", originalFileName);
			
			videoService.create(map);
			int videoNo = (Integer)map.get("v_no");
			
			if(videoNo != -1) {
				return "redirect:watch?v_no="+videoNo;
			}
		}
		
		return "redirect:index";
	}
	
	@LoginCheck
	@RequestMapping(value = "remove_data")
	public void remove_data(@RequestParam(required = false) String fileName, HttpServletRequest request) {
		if((!fileName.equals("") || fileName != "")) {
			try {
				String videoPath = request.getSession().getServletContext().getRealPath(path);
				String trashPath = request.getSession().getServletContext().getRealPath(path+"trash/");
				fileName = fileName.substring(0,fileName.lastIndexOf("."));
				File file = new File(request.getSession().getServletContext().getRealPath(path), fileName);
				File file_i = new File(request.getSession().getServletContext().getRealPath(path), fileName+"_i.png");
				
				for(int i=0; i<100; i++) {
		            if(new File(videoPath, file.getName()).renameTo(new File(trashPath, file.getName()))) {
		            	System.out.println("video 이동");
		            	if(new File(videoPath, file_i.getName()).renameTo(new File(trashPath, file_i.getName()))) {
		            		System.out.println("video_img 이동");
			                break;
		            	}
		            } else {
		                try {
		                    Thread.sleep(1000);
		                } catch(InterruptedException e) {
		                    e.printStackTrace();
		                }
		            }
				}
			}catch (Exception e) {
				System.out.println("\t" + e + " : 영상 업로드 도중 취소 Error");
			}
		}
	}
	
	
	
}
