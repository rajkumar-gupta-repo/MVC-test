package com.test.dao;

import java.util.List;

import com.test.entity.user;

public interface userDao {

	public int saveuserdb(user u);

	public List<user> getalluserdata();

	//////////////////////////////////////////////////////

	public user getuser(int id);

	public void updateuserdao(user user);
	
	public void deletebyid(int id);

}
