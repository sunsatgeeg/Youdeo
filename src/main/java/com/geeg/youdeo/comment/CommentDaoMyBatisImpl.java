package com.geeg.youdeo.comment;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDao")
public class CommentDaoMyBatisImpl implements CommentDao {
	public final static String NAMESPACE = "com.geeg.youdeo.comment.mapper.CommentMapper.";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(Map map) throws Exception {
		return sqlSession.insert(NAMESPACE + "create", map);
	}

	
	@Override
	public int update(Comment comment) throws Exception {
		return sqlSession.update(NAMESPACE + "update", comment);
	}

	@Override
	public int remove(int c_no) throws Exception {
		return sqlSession.delete(NAMESPACE + "remove", c_no);
	}

	@Override
	public List<Comment> findCommentList(String v_no) throws Exception {
		return sqlSession.selectList(NAMESPACE + "findCommentList", v_no);
	}


	

}
