package com.nvh.SpringOneTech.dao;

import java.util.List;

import com.nvh.SpringOneTech.entity.Categorys;

public interface ICategorysDao {

	Categorys findById(Integer id);

	List<Categorys> findAll();

	Categorys create(Categorys entity);

	void update(Categorys entity);

	Categorys delete(Integer id);

	List<Categorys> findParent();

	List<Categorys> findChildren(int id);

	List<Categorys> check_parent(int parent_id);

	

}
