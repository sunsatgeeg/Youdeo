package com.geeg.youdeo.member;

public class Member {
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_email;
	private String m_birthday;
	private String m_phone;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String m_id, String m_password, String m_name, String m_email, String m_birthday, String m_phone) {
		super();
		this.m_id = m_id;
		this.m_password = m_password;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_birthday = m_birthday;
		this.m_phone = m_phone;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_birthday() {
		return m_birthday;
	}

	public void setM_birthday(String m_birthday) {
		this.m_birthday = m_birthday;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	
	// 패스워드 일치 여부 검사
	public boolean isMatchPassword(String password){
		boolean isMatch=false;
		if(this.m_password.equals(password)){
			isMatch=true;
		}
		return isMatch;
	}
	
	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", m_password=" + m_password + ", m_name=" + m_name + ", m_email=" + m_email
				+ ", m_birthday=" + m_birthday + ", m_phone=" + m_phone + "]";
	}
	
	
}
