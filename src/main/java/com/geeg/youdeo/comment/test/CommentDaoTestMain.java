package com.geeg.youdeo.comment.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.geeg.youdeo.comment.Comment;
import com.geeg.youdeo.comment.CommentDao;
public class CommentDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");

		CommentDao commentDao = (CommentDao) applicationContext.getBean("commentDao");
		System.out.println("\t" + commentDao);

		Map map = new HashMap();
		map.put("c_content", "댓글내용");
		map.put("u_id", "sjssj7777");
		map.put("v_no", "1");
		
		//System.out.println("\t1. createComment -->" + commentDao.create(map));
		
		map = new HashMap();
		map.put("v_no", 1);
		map.put("last_no",5);
		
		List<Comment> commentList = commentDao.findCommentOrderDateList(map);
		
		System.out.println("\t2. findCommentOrderDateList -- > " + commentList);
		
		//System.out.println("\t3. updateComment -- > " + commentDao.update(new Comment(1, null, "수정댓글", null, null)));
		
		//System.out.println("\t4. removeComment --> " + commentDao.remove(2));
		
	}

}
