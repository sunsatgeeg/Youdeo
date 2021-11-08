package com.geeg.youdeo.video;

import java.util.List;
import java.util.Map;

import com.geeg.youdeo.subscription.Subscription;

public interface VideoService {

	int create(Map map) throws Exception;

	List<Video> searchVideoList(String v_title) throws Exception;

	List<Video> findChannelVideoList(String u_id) throws Exception;
	List<Video> findSubscriptionVideoList(Map map) throws Exception;
	
	Video findVideo(int v_no) throws Exception;

	int update(Video video) throws Exception;
	int updateViewCount(int v_no) throws Exception;

	int remove(int v_no) throws Exception;

	List<Video> findVideoList(Map map) throws Exception;
}
