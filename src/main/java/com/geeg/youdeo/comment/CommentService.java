package com.geeg.youdeo.comment;

import java.util.List;
import java.util.Map;

public interface CommentService {

	int create(Map map) throws Exception;

	List<Comment> findCommentList(String v_no) throws Exception;

	int update(Comment comment) throws Exception;

	int remove(int c_no) throws Exception;

}
