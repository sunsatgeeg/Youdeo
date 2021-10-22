package com.geeg.youdeo.comment;

import java.util.Date;

import com.geeg.youdeo.user.User;
import com.geeg.youdeo.video.Video;

public class Comment {
	private int c_no;
	private Date c_date;
	private String c_content;
	private User user;
	private Video video;

	public Comment() {
		// TODO Auto-generated constructor stub
	}

	public Comment(int c_no, Date c_date, String c_content, User user, Video video) {
		super();
		this.c_no = c_no;
		this.c_date = c_date;
		this.c_content = c_content;
		this.user = user;
		this.video = video;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public Date getC_date() {
		return c_date;
	}

	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
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

	@Override
	public String toString() {
		return "Comment [c_no=" + c_no + ", c_date=" + c_date + ", c_content=" + c_content + ", user=" + user
				+ ", video=" + video + "]";
	}

}
