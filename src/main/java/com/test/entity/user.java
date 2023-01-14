package com.test.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class user {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int uid;

	private String name;

	private String uname;

	private String password;

	@Override
	public String toString() {
		return "User [uid=" + uid + ", name=" + name + ", uname=" + uname + ", password=" + password + "]";
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
