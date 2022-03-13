package com.nvh.SpringOneTech.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nvh.SpringOneTech.entity.Users;

@Repository
@Transactional
public class UserDaoImpl implements IUserDao {
	@Autowired
	SessionFactory factory;

	@Override
	public Users create(Users entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return null;
	}

	@Override
	public void update(Users entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	@Override
	public Users findById(String id) {
		Session session = factory.getCurrentSession();
		Users entity = session.find(Users.class, id);
		return entity;
	}

	@Override
	public List<Users> findAll() {
		String hql = "FROM Users";
		Session session = factory.getCurrentSession();
		TypedQuery<Users> query = session.createQuery(hql, Users.class);
		List<Users> list = query.getResultList();
		return list;
	}

	@Override
	public Users delete(String id) {
		Session session = factory.getCurrentSession();
		Users entity = session.find(Users.class, id);
		session.delete(entity);
		return entity;
	}

}
