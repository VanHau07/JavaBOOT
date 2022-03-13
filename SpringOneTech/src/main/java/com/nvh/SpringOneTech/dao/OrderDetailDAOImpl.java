package com.nvh.SpringOneTech.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nvh.SpringOneTech.entity.Orders;
import com.nvh.SpringOneTech.entity.Order_details;

@Transactional
@Repository

public class OrderDetailDAOImpl implements IOrderDetailDao {

	@Autowired
	SessionFactory factory;

	@Override
	public Order_details findById(Integer id) {
		Session session=factory.getCurrentSession();
		Order_details entity = session.find(Order_details.class, id);
		return entity;
	}

	@Override
	public List<Order_details> findAll() {
		String hql = "FROM Order_details";
		Session session=factory.getCurrentSession();
		TypedQuery<Order_details> query = session.createQuery(hql, Order_details.class);
		List<Order_details> list = query.getResultList();
		return list;
	}

	@Override
	public Order_details create(Order_details entity) {
		Session session=factory.getCurrentSession();
		session.save(entity);
		return null;
	}

	@Override
	public void update(Order_details entity) {
		Session session=factory.getCurrentSession();
		session.update(entity);

	}

	@Override
	public Order_details delete(Integer id) {
		Session session=factory.getCurrentSession();
		Order_details entity = session.find(Order_details.class, id);
		session.delete(entity);
		return entity;
	}

	@Override
	public List<Order_details> findByOrder(Orders order) {
		String hql = "FROM Order_details ";
		Session session=factory.getCurrentSession();
		TypedQuery<Order_details> query = session.createQuery(hql, Order_details.class);
//		query.setParameter("oid", order.getId());
		List<Order_details> list = query.getResultList();
		return list;
	}

}
