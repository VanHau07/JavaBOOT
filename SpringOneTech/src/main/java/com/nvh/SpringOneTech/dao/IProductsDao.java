package com.nvh.SpringOneTech.dao;

import java.util.List;

import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Menus;
import com.nvh.SpringOneTech.entity.Products;


public interface IProductsDao {


	List<Object[]> inventory();

	List<Object[]> inventory(Integer id);



	long getPageCount(int pageSize);

	List<Products> getPage(int pageNo, int pageSize);


	List<Products> findAll();

	List<Categorys> listCategorys();



	Products findById(Integer id);

	List<Products> findByKeywords(String keywords);

	Products create(Products entity);

	void update(Products entity);

	Products delete(Integer id);

	List<Menus> findMenu();

	List<Products> findPhone();

	List<Products> findNew();

	List<Products> findBest();

	List<Products> findIpad();

	List<Products> findLaptop();

	List<Products> findView();

	List<Products> findWatch();

	List<Products> findSound();

	List<Products> findHot();

	public Products findProductByID(int id);
	
}
