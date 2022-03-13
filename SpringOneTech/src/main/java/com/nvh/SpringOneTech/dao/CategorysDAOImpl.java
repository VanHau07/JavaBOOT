package com.nvh.SpringOneTech.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nvh.SpringOneTech.entity.Categorys;
@Transactional
@Repository

public class CategorysDAOImpl implements ICategorysDao {
	@Autowired
	SessionFactory factory;

	@Override
	public Categorys findById(Integer id) {
		Session session = factory.getCurrentSession();
		Categorys entity = session.find(Categorys.class, id);
		return entity;
	}


	@Override
	public List<Categorys> findAll() {
		String hql = "FROM Categorys";
		Session session = factory.getCurrentSession();
		TypedQuery<Categorys> query = session.createQuery(hql, Categorys.class);
		List<Categorys> listscatead = query.getResultList();
		return listscatead;
	}


	@Override
	public Categorys create(Categorys entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return null;
	}


	@Override
	public void update(Categorys entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	@Override
	public Categorys delete(Integer id) {
		Session session = factory.getCurrentSession();
		Categorys entity = session.find(Categorys.class, id);
		session.delete(entity);
		return entity;
	}
	
	@Override
	public List<Categorys> findParent() {
		String hql = "FROM Categorys c WHERE c.parent_id = 0";
		Session session = factory.getCurrentSession();
		TypedQuery<Categorys> query = session.createQuery(hql, Categorys.class);
		List<Categorys> list = query.getResultList();
		return list;
	}

	@Override
	public List<Categorys> findChildren(int id) {
		String hql = "FROM Categorys c WHERE c.parent_id = '"+id+"'";
		Session session = factory.getCurrentSession();
		TypedQuery<Categorys> query = session.createQuery(hql, Categorys.class);
		List<Categorys> list = query.getResultList();
		return list;
	}


	@Override
	public List<Categorys> check_parent(int parent_id){
		String hql = "FROM Categorys c WHERE c.check_id = '"+parent_id+"'";
		Session session = factory.getCurrentSession();
		TypedQuery<Categorys> query = session.createQuery(hql, Categorys.class);
		List<Categorys> list = query.getResultList();
		return list;
	}

}
