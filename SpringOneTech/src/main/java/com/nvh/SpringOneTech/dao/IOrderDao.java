package com.nvh.SpringOneTech.dao;

import java.util.List;

import com.nvh.SpringOneTech.entity.Orders;
import com.nvh.SpringOneTech.entity.Order_details;
import com.nvh.SpringOneTech.entity.Products;
import com.nvh.SpringOneTech.entity.Users;



public interface IOrderDao {
	Orders findById(Integer id);

	List<Orders> findAll();

	Orders create(Orders entity);

	void update(Orders entity);

	Orders delete(Integer id);

	void create(Orders order, List<Order_details> details);

	List<Orders> findByUser(Users user);

	List<Products> findItemsByUser(Users user);
}