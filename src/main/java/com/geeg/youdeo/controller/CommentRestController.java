package com.geeg.youdeo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.geeg.youdeo.comment.Comment;
import com.geeg.youdeo.comment.CommentService;
import com.geeg.youdeo.controller.interceptor.LoginCheck;

@RestController
public class CommentRestController {
	@Autowired
	private CommentService commentService;
	
	@LoginCheck
	@PostMapping(value = "comment_write_action" , produces = "text/plain;charset=UTF-8")
	public String index(@RequestParam String u_id, @RequestParam String c_content, @RequestParam int v_no, HttpSession session) throws Exception {
		String sUserId=(String)session.getAttribute("sUserId");
		
		if(sUserId.equals(u_id) || sUserId == u_id) {
			Map map = new HashMap();
			map.put("u_id", u_id);
			map.put("v_no", v_no);
			map.put("c_content", c_content);
			
			int result = commentService.create(map);
			
			if(result==1) {
				return "true";
			}
		}
		
		return "false";
	}
	
	@RequestMapping(value = "comment_load", produces = "application/json;charset=UTF-8")
	public String comment_load(@RequestParam int v_no, @RequestParam int last_no) throws Exception {
		
		Map map = new HashMap();
		map.put("v_no", v_no);
		map.put("last_no",last_no+1);
		
		List<Comment> commentList = commentService.findCommentOrderDateList(map);
		
		if(commentList.size() >= 1) {
			StringBuffer sb=new StringBuffer();
			sb.append("{");
			sb.append("\"count\":"+commentList.size()+",");
			sb.append("\"lastNo\":"+(last_no+commentList.size())+",");
			sb.append("\"data\": [");
			for(int i=0;i<commentList.size();i++){
				sb.append("{\"date\":\""+commentList.get(i).getC_date()+
					      "\",\"content\":\""+commentList.get(i).getC_content().replace("/\n/g", "\\\\n").replace("/\r/g", "\\\\r").replace("/\t/g", "\\\\t")+
					      "\",\"idimg\":\""+commentList.get(i).getUser().getU_profileimg()+
					      "\",\"name\":\""+commentList.get(i).getUser().getU_name()+
					      "\",\"id\":\""+commentList.get(i).getUser().getU_id()+"\"}");
				if(i!=commentList.size()-1)
					sb.append(",");
			}
			sb.append("]");
			sb.append("}");
			
			return sb.toString();
		}else {
			StringBuffer sb=new StringBuffer();
			sb.append("{");
			sb.append("\"count\":"+commentList.size());
			sb.append("}");
			
			return sb.toString();
		}
	}
	
	
	
}
