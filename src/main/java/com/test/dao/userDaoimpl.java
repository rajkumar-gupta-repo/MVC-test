package com.test.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.entity.user;

@Repository
public class userDaoimpl implements userDao {
	@Autowired
	private SessionFactory factory;

	@Override
	public int saveuserdb(user user) {

		Session session = factory.openSession();

		int id = (int) session.save(user);
		session.beginTransaction();
		session.getTransaction().commit();

		return id;
	}

	@Override
	public List<user> getalluserdata() {

		Session session = factory.openSession();

		Query q = session.createQuery("from user");
		List list = q.getResultList();

		return list;
	}

	@Override
	public user getuser(int id) {

		Session session = factory.openSession();
		user user = session.get(user.class, id);

		session.close();

		return user;
	}

	@Override
	public void updateuserdao(user user) {

		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(user);
		tx.commit();
		session.close();

	}

	@Override
	public void deletebyid(int id) {

		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		user user = session.get(user.class, id);
		session.delete(user);
		tx.commit();
		session.close();

	}

}
