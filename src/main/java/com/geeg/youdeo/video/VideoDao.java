package com.geeg.youdeo.video;

import java.util.List;
import java.util.Map;

public interface VideoDao {

	int create(Map map) throws Exception;

	int update(Video video) throws Exception;

	int remove(int v_no) throws Exception;

	Video findVideo(int v_no) throws Exception;

	List<Video> searchVideoList(String v_title) throws Exception;

	List<Video> findVideoList() throws Exception;

	List<Video> findChannelVideoList(String u_id) throws Exception;

}
