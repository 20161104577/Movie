package com.film.bean;

public class UserBean {

	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	private int u_id;
	private String u_name, u_pwd, u_retime, u_email, u_avatar;
	
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_retime() {
		return u_retime;
	}
	public void setU_retime(String u_retime) {
		this.u_retime = u_retime;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_avatar() {
		return u_avatar;
	}
	public void setU_avatar(String u_avatar) {
		this.u_avatar = u_avatar;
	}
}
