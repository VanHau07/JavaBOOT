package com.nvh.SpringOneTech.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class ReportDaoImpl implements IReportDao{

	@Autowired
	SessionFactory factory;

	@Override
	public List<Object[]> revenueByCustomer() {
		String hql = "SELECT d.orders.users.id,SUM(d.soluongban),SUM(d.giaban*d.soluongban*(1-d.giamgia/100)),MIN(d.giaban*(1-d.giamgia/100)),MAX(d.giaban*(1-d.giamgia/100)),AVG(d.giaban) FROM Order_details d GROUP BY d.orders.users.id";

		Session session = factory.getCurrentSession();
		TypedQuery<Object[]> query = session.createQuery(hql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;
	}

	@Override
	public List<Object[]> revenueByMonth() {
		String hql = "SELECT MONTH(d.orders.ngaydat),SUM(d.soluongban),SUM(d.giaban*d.soluongban*(1-d.giamgia/100)),MIN(d.giaban*(1-d.giamgia/100)),MAX(d.giaban*(1-d.giamgia/100)),AVG(d.giaban*(1-d.giamgia/100)) FROM Order_details d  GROUP BY MONTH(d.orders.ngaydat) ORDER BY MONTH(d.orders.ngaydat) ASC";

		Session session = factory.getCurrentSession();
		TypedQuery<Object[]> query = session.createQuery(hql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;
	}

	@Override
	public List<Object[]> revenueByYear() {
		String hql = "SELECT YEAR(d.orders.ngaydat),SUM(d.soluongban),SUM(d.giaban*d.soluongban*(1-d.giamgia/100)),MIN(d.giaban*(1-d.giamgia/100)),MAX(d.giaban*(1-d.giamgia/100)),AVG(d.giaban*(1-d.giamgia/100)) FROM Order_details d  GROUP BY YEAR(d.orders.ngaydat) ORDER BY YEAR(d.orders.ngaydat) ASC";

		Session session = factory.getCurrentSession();
		TypedQuery<Object[]> query = session.createQuery(hql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;
	}



}
