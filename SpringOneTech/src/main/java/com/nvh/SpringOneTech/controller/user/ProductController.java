package com.nvh.SpringOneTech.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nvh.SpringOneTech.dao.ICategorysDao;
import com.nvh.SpringOneTech.dao.IProductsDao;
import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Menus;
import com.nvh.SpringOneTech.entity.Products;
import com.nvh.SpringOneTech.service.CookieService;


@Controller
public class ProductController {
	@Autowired
	IProductsDao pdao;
	
	@Autowired
	ICategorysDao cdao;
	
	@Autowired
	CookieService cookie;
	int pageSize = 8;
	@RequestMapping(value = { "chi-tiet/{id}" })
	public String index(Model model, @PathVariable("id") Integer id) {
		Products pro_id = pdao.findById(id);
		model.addAttribute("prod", pro_id);
		model.addAttribute("data", pdao.inventory(id));

		List<Categorys> listcate = cdao.findAll();
		model.addAttribute("listcate", listcate);
		
		List<Menus> listMenu = pdao.findMenu();
		model.addAttribute("listMenu", listMenu);
		
		
		
		return "detail/detail_product";
	}
}
