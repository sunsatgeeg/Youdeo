package com.geeg.youdeo.comment;

import java.util.List;
import java.util.Map;

public interface CommentDao {

	int create(Map map) throws Exception;

	int update(Comment comment) throws Exception;

	int remove(int c_no) throws Exception;

	List<Comment> findCommentOrderDateList(Map map) throws Exception;

}
