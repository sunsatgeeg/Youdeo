package com.geeg.youdeo.comment;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDao commentDao;
	
	@Override
	public int create(Map map) throws Exception{
		return commentDao.create(map);
	}

	@Override
	public List<Comment> findCommentOrderDateList(Map map) throws Exception {
		return commentDao.findCommentOrderDateList(map);
	}

	@Override
	public int update(Comment comment) throws Exception {
		return commentDao.update(comment);
	}

	@Override
	public int remove(int c_no) throws Exception {
		return commentDao.remove(c_no);
	}



}
