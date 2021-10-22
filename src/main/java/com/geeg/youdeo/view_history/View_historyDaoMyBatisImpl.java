package com.geeg.youdeo.view_history;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("view_historyDao")
public class View_historyDaoMyBatisImpl implements View_historyDao {
	public final static String NAMESPACE = "com.geeg.youdeo.view_history.mapper.View_historyMapper.";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(Map map) throws Exception {
		return sqlSession.insert(NAMESPACE + "create", map);
	}

	@Override
	public int remove(int vh_no) throws Exception {
		return sqlSession.delete(NAMESPACE + "remove", vh_no);
	}

	@Override
	public List<View_history> findView_historyList(String u_id) throws Exception {
		return sqlSession.selectList(NAMESPACE + "findView_historyList", u_id);
	}


	

}
