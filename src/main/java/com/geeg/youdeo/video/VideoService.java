package com.geeg.youdeo.video;

import java.util.List;
import java.util.Map;

public interface VideoService {

	int create(Map map) throws Exception;

	List<Video> findVideoList(String v_title) throws Exception;

	Video findVideo(int v_no) throws Exception;

	int update(Video video) throws Exception;

	int remove(int v_no) throws Exception;

}
