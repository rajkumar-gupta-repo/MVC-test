package com.test.service;

import java.util.List;

import com.test.entity.user;

public interface UserService {
	
	public int saveuser(user u);
	
	public boolean checkloginservice(user user);
	
	public List<user> getalldata();
	
	
	////////////////////////////////////////////
	
	public user getuser(int id);
	
	public void updateuser(user user);
	
	public void deletebyid(int id); 
	

}
