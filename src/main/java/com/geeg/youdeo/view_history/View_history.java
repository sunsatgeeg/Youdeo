package com.geeg.youdeo.view_history;

import com.geeg.youdeo.user.User;
import com.geeg.youdeo.video.Video;

public class View_history {
	private int vh_no;
	private User user;
	private Video video;
	private String vh_date;

	public View_history() {
		// TODO Auto-generated constructor stub
	}

	public View_history(int vh_no, User user, Video video, String vh_date) {
		super();
		this.vh_no = vh_no;
		this.user = user;
		this.video = video;
		this.vh_date = vh_date;
	}

	public int getVh_no() {
		return vh_no;
	}

	public void setVh_no(int vh_no) {
		this.vh_no = vh_no;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public String getVh_date() {
		return vh_date;
	}

	public void setVh_date(String vh_date) {
		this.vh_date = vh_date;
	}

	@Override
	public String toString() {
		return "View_history [vh_no=" + vh_no + ", user=" + user + ", video=" + video + ", vh_date=" + vh_date + "]";
	}
	

	
	
}
