package com.geeg.youdeo.view_history;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class View_historyServiceImpl implements View_historyService {
	@Autowired
	private View_historyDao view_historyDao;
	
	@Override
	public int create(Map map) throws Exception{
		return view_historyDao.create(map);
	}

	@Override
	public List<View_history> findView_historyList(String u_id) throws Exception {
		return view_historyDao.findView_historyList(u_id);
	}

	@Override
	public int remove(int vh_no) throws Exception {
		return view_historyDao.remove(vh_no);
	}



}
