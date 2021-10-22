package com.geeg.youdeo.view_history;

import java.util.List;
import java.util.Map;

public interface View_historyDao {

	int create(Map map) throws Exception;
	
	// 시청영상 기록이라서 업데이트 필요없다 판단
	//int update(View_history view_history) throws Exception;

	int remove(int vh_no) throws Exception;

	List<View_history> findView_historyList(String u_id) throws Exception;

}
