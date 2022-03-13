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
import com.nvh.SpringOneTech.entity.Products;
import com.nvh.SpringOneTech.entity.Users;

@Repository
@Transactional
public class OderDAOImpl implements IOrderDao{

	

	@Autowired
	SessionFactory factory;

	@Override
	public Orders findById(Integer id) {
	Session session=factory.getCurrentSession();
		Orders entity = session.find(Orders.class, id);
		return entity;
	}

	@Override
	public List<Orders> findAll() {
		String hql = "FROM Orders";
	Session session=factory.getCurrentSession();
		TypedQuery<Orders> query = session.createQuery(hql, Orders.class);
		List<Orders> list = query.getResultList();
		return list;
	}

	@Override
	public Orders create(Orders entity) {
	Session session=factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	@Override
	public void update(Orders entity) {
	Session session=factory.getCurrentSession();
		session.update(entity);

	}

	@Override
	public Orders delete(Integer id) {
	Session session=factory.getCurrentSession();
		Orders entity = session.find(Orders.class, id);
		session.delete(entity);
		return entity;
	}

	@Override
	public void create(Orders order, List<Order_details> details) {
	Session session=factory.getCurrentSession();
		session.save(order);
		for (Order_details detail : details) {
			session.save(detail);

		}
	}

	@Override
	public List<Orders> findByUser(Users user) {
//		String hql = "FROM Orders";
		String hql = "FROM Orders o WHERE o.users.id_user=:uid ORDER BY o.ngaydat DESC";
	Session session=factory.getCurrentSession();
		TypedQuery<Orders> query = session.createQuery(hql, Orders.class);
		query.setParameter("uid", user.getId_user());
		List<Orders> list = query.getResultList();
		return list;
	}

	@Override
	public List<Products> findItemsByUser(Users user) {
		String hql = "SELECT d.Products FROM Order_details d WHERE d.orders.users.id_user=:uid";
		Session session=factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		query.setParameter("uid", user.getId_user());
		List<Products> list = query.getResultList();
		return list;
	}
}