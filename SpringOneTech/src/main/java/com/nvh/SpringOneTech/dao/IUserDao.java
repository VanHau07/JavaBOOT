package com.nvh.SpringOneTech.dao;

import java.util.List;

import com.nvh.SpringOneTech.entity.Users;


public interface IUserDao {

	Users create(Users entity);

	void update(Users entity);

	Users findById(String id);

	List<Users> findAll();

	Users delete(String id);
}
