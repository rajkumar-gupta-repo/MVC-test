package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.userDao;
import com.test.entity.user;

@Service
public class UserServiceimpl implements UserService {
	@Autowired
	private userDao userdao;

	@Override
	public int saveuser(user user) {

		int id = userdao.saveuserdb(user);

		return id;
	}

	@Override
	public boolean checkloginservice(user user) {

		List<com.test.entity.user> users = userdao.getalluserdata();

		for (user u : users) {
			if (u.getUname().equals(user.getUname()) && u.getPassword().equals(user.getPassword())) {
				return true;
			}

		}

		return false;
	}

	@Override
	public List<user> getalldata() {

		List<user> list = userdao.getalluserdata();

		return list;
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////

	@Override
	public user getuser(int id) {

		user user = userdao.getuser(id);

		return user;
	}

	@Override
	public void updateuser(user user) {
		userdao.updateuserdao(user);
		
	}

	@Override
	public void deletebyid(int id) {
		userdao.deletebyid(id);
		
	}

}
