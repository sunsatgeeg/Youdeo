package com.geeg.youdeo.view_history;

import java.util.List;
import java.util.Map;

public interface View_historyService {

	int create(Map map) throws Exception;

	List<View_history> findView_historyList(String vh_title) throws Exception;

	int remove(int vh_no) throws Exception;

}
