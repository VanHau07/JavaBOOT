package com.nvh.SpringOneTech.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nvh.SpringOneTech.dao.IOrderDao;
import com.nvh.SpringOneTech.dao.IProductsDao;
import com.nvh.SpringOneTech.dao.IUserDao;
import com.nvh.SpringOneTech.entity.Orders;
import com.nvh.SpringOneTech.entity.Products;
import com.nvh.SpringOneTech.entity.Users;


@Controller
public class AdminController {

	@Autowired
	IProductsDao pdao;
	
	@Autowired
	IUserDao dao;
	
	@Autowired
	IOrderDao odao;
	@RequestMapping("/admin")
	public String Index(Model model) {
		Users user = new Users();
		model.addAttribute("user", user);
		model.addAttribute("user", dao.findAll());
		
		

		// Thống kê số lượng sản phẩm
		Products product = new Products();
		model.addAttribute("product", product);
		model.addAttribute("product", pdao.findAll());

		// Thống kê số đơn hàng
		Orders order = new Orders();
		model.addAttribute("order", order);
		model.addAttribute("order", odao.findAll());

	return "admin/home/index";
	}
}
