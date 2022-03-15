package com.nvh.SpringOneTech.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Menus;
import com.nvh.SpringOneTech.entity.Products;



@Transactional
@Repository

public class ProductsDAOImpl implements IProductsDao {

	@Autowired
	SessionFactory factory;

	@Override
	public List<Object[]> inventory() {
		String hql = "SELECT SUM(od.soluongban), SUM(p.soluong) - SUM(od.soluongban) "
				+ " FROM OrderDetail od , Products p where od.products.id = p.id ";
		Session session = factory.getCurrentSession();
		TypedQuery<Object[]> query = session.createQuery(hql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;

	}

	@Override
	public List<Object[]> inventory(Integer id) {
		String hql = "SELECT SUM(od.soluongban) FROM Order_details od where od.products.id =(" + id + ") ";
		Session session = factory.getCurrentSession();
		TypedQuery<Object[]> query = session.createQuery(hql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;

	}

	@Override
	public long getPageCount(int pageSize) {
		String hql = "SELECT count(c) FROM Products c";
		Session session = factory.getCurrentSession();
		TypedQuery<Long> query = session.createQuery(hql, Long.class);
		Long rowCount = query.getSingleResult();
		long pageCount = (long) Math.ceil(1.0 * rowCount / pageSize);
		return pageCount;
	}


	@Override
	public List<Products> getPage(int pageNo, int pageSize) {
		String hql = "FROM Products";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		query.setFirstResult(pageNo * pageSize);
		query.setMaxResults(pageSize);
		List<Products> list = query.getResultList();
		return list;
	}

	@Override
	public List<Products> findAll() {
		String hql = "FROM Products ORDER BY thoi_gian DESC";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}

	@Override
	public List<Categorys> listCategorys() {
		String sql = "FROM Categorys ORDER BY id ASC";
		Session session = factory.getCurrentSession();
		TypedQuery<Categorys> query = session.createQuery(sql, Categorys.class);
		List<Categorys> listscate = query.getResultList();
		return listscate;
	}


	@Override
	public Products findById(Integer id) {
		Session session = factory.getCurrentSession();
		Products entity = session.find(Products.class, id);
		return entity;
	}
	@Override
	public List<Products> findByKeywords(String keywords) {
		String hql = "FROM Products p  WHERE p.ten LIKE :kw OR p.categorys.ten LIKE :kw  and p.deal_best=false  Order by random()";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		query.setParameter("kw", "%" + keywords + "%");
		List<Products> list = query.getResultList();
		return list;
	}

	@Override
	public Products create(Products entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return null;
	}

	@Override
	public void update(Products entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	@Override
	public Products delete(Integer id) {
		Session session = factory.getCurrentSession();
		Products entity = session.find(Products.class, id);
		session.delete(entity);
		return entity;
	}

	@Override
	public List<Menus> findMenu() {
		String hql = "FROM Menus";
		Session session = factory.getCurrentSession();
		TypedQuery<Menus> query = session.createQuery(hql, Menus.class);
		List<Menus> list = query.getResultList();
		return list;
	}
	
	
//

	@Override
	public List<Products> findPhone() {
		String hql = "FROM Products p where p.deal_week= true and p.deal_favor= true ";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}
	

	@Override
	public List<Products> findNew() {
		String hql = "FROM Products p where p.deal_new= true";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}

	
	@Override
	public List<Products> findBest() {
		String hql = "FROM Products p where p.deal_best= true";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}

	@Override
	public List<Products> findLaptop() {
		String hql = "FROM Products p where p.deal_week= true and p.deal_favor= true and p.chu_de = 'Laptop' ";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}

	
	@Override
	public List<Products> findIpad() {
		String hql = "FROM Products p where p.deal_week= true and p.deal_favor= true and p.chu_de = 'Máy tính bảng' ";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}


	@Override
	public List<Products> findView() {
		String hql = "FROM Products p where p.luot_xem >= 15";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}


	@Override
	public List<Products> findWatch() {
		String hql = "FROM Products p where p.deal_week= true and p.deal_favor= true and p.chu_de = 'Đồng hồ' ";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}

	@Override
	public List<Products> findSound() {
		String hql = "FROM Products p where p.deal_week= true and p.deal_favor= true and p.chu_de = 'Loa' ";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}

	
	
	@Override
	public List<Products> findHot() {
		String hql = "FROM Products p where  p.deal_hot = true";
		Session session = factory.getCurrentSession();
		TypedQuery<Products> query = session.createQuery(hql, Products.class);
		List<Products> list = query.getResultList();
		return list;
	}

	@Override
	public Products findProductByID(int id) {
		for(Products pro : findAll()) {
			if(pro.getId()==id)
				return pro;
		}
		return null;
	}

}
