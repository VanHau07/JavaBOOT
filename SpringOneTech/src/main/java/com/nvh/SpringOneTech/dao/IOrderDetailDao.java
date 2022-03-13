package com.nvh.SpringOneTech.dao;

import java.util.List;

import com.nvh.SpringOneTech.entity.Orders;
import com.nvh.SpringOneTech.entity.Order_details;


public interface IOrderDetailDao {
	Order_details findById(Integer id);

	List<Order_details> findAll();

	Order_details create(Order_details entity);

	void update(Order_details entity);

	Order_details delete(Integer id);

	List<Order_details> findByOrder(Orders order);
}
