package com.nvh.SpringOneTech.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.nvh.SpringOneTech.dao.IProductsDao;
import com.nvh.SpringOneTech.entity.Products;

@SessionScope // Name: scopedTarget.cartService
@Service
public class CartService {

	@Autowired
	IProductsDao dao;

	Map<Integer, Products> map = new HashMap<>();
	


	public void add(Integer id) {
		Products p = map.get(id);
		if (p == null) {
			p = dao.findById(id);
			p.setSoluong(1);
			map.put(id, p);
		} else {
			p.setSoluong(p.getSoluong() + 1);
		}
	}

	public void remove(Integer id) {
		map.remove(id);
	}

	public void update(Integer id, int qty) {
		Products p = map.get(id);
		p.setSoluong(qty);
	}

	public void clear() {
		map.clear();
	}

	public int getCount() {
		Collection<Products> ps = this.getItems();
		int count = 0;
		for (Products p : ps) {
			count += p.getSoluong();
		}
		return count;
	}

	public double getAmount() {
		Collection<Products> ps = this.getItems();
		double amount = 0;
		for (Products p : ps) {
			
			amount += p.getSoluong() * p.getGia_goc() * (1 -( p.getMa_giam()/100));
		}
		
		return amount;
	}

	public Collection<Products> getItems() {
		return map.values();
	}

}
