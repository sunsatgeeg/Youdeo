package com.geeg.youdeo.video;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VideoServiceImpl implements VideoService {
	@Autowired
	private VideoDao videoDao;
	
	@Override
	public int create(Map map) throws Exception{
		return videoDao.create(map);
	}

	@Override
	public List<Video> searchVideoList(String v_title) throws Exception {
		return videoDao.searchVideoList(v_title);
	}
	
	@Override
	public List<Video> findChannelVideoList(String u_id) throws Exception {
		return videoDao.findChannelVideoList(u_id);
	}
	
	@Override
	public List<Video> findVideoList(int last_no) throws Exception {
		return videoDao.findVideoList(last_no);
	}
	
	@Override
	public Video findVideo(int v_no) throws Exception {
		return videoDao.findVideo(v_no);
	}

	@Override
	public int update(Video video) throws Exception {
		return videoDao.update(video);
	}
	@Override
	public int updateViewCount(int v_no) throws Exception {
		return videoDao.updateViewCount(v_no);
	}

	@Override
	public int remove(int v_no) throws Exception {
		return videoDao.remove(v_no);
	}



}
