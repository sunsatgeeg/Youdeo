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

	public List<Video> findVideoList() throws Exception {
		return videoDao.findVideoList();
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
	public int remove(int v_no) throws Exception {
		return videoDao.remove(v_no);
	}



}
