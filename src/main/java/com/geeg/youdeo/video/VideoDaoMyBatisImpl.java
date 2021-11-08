package com.geeg.youdeo.video;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.geeg.youdeo.subscription.Subscription;

@Repository("videoDao")
public class VideoDaoMyBatisImpl implements VideoDao {
	public final static String NAMESPACE = "com.geeg.youdeo.video.mapper.VideoMapper.";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(Map map) throws Exception {
		return sqlSession.insert(NAMESPACE + "create", map);
	}

	@Override
	public int update(Video video) throws Exception {
		return sqlSession.update(NAMESPACE + "update", video);
	}
	@Override
	public int updateViewCount(int v_no) throws Exception {
		return sqlSession.update(NAMESPACE + "updateViewCount", v_no);
	}

	@Override
	public int remove(int v_no) throws Exception {
		return sqlSession.delete(NAMESPACE + "remove", v_no);
	}

	@Override
	public Video findVideo(int v_no) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "findVideo", v_no);
	}

	@Override
	public List<Video> searchVideoList(String v_title) throws Exception {
		return sqlSession.selectList(NAMESPACE + "searchVideoList", v_title);
	}
	
	@Override
	public List<Video> findChannelVideoList(String u_id) throws Exception {
		return sqlSession.selectList(NAMESPACE + "findChannelVideoList", u_id);
	}
	@Override
	public List<Video> findSubscriptionVideoList(Map map) throws Exception{
		return sqlSession.selectList(NAMESPACE + "findSubscriptionVideoList", map);
	}
	
	public List<Video> findVideoList(Map map) throws Exception {
		return sqlSession.selectList(NAMESPACE + "findVideoList", map);
	}


	

}
