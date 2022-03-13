package com.nvh.SpringOneTech.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nvh.SpringOneTech.dao.ICategorysDao;
import com.nvh.SpringOneTech.dao.IProductsDao;
import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Menus;
import com.nvh.SpringOneTech.service.CartService;


@Controller
public class ShoppingCartController {
	@Autowired
	CartService cart;
	@Autowired
	IProductsDao pdao;
	@Autowired
	ICategorysDao cdao;
	@ResponseBody
	@RequestMapping("/cart/update/{id}/{qty}")
	public Object[] update(@PathVariable("id") Integer id, @PathVariable("qty") Integer qty) {
		cart.update(id,qty);
		Object[] info= {cart.getCount(), cart.getAmount()};
		return info;
	}
	
	
	@ResponseBody
	@RequestMapping("/cart/add/{id}")
	public Object[] add(@PathVariable("id") Integer id) {
		cart.add(id);
		Object[] info= {cart.getCount(), cart.getAmount()};
		return info;
	}
	
	@ResponseBody
	@RequestMapping("/cart/remove/{id}")
	public Object[] remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		Object[] info= {cart.getCount(), cart.getAmount()};
		return info;
	}
	
	@RequestMapping("/cart/view")
	public String view(Model model) {
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		List<Menus> listMenu = pdao.findMenu();
		model.addAttribute("listMenu", listMenu);
		return "cart/view";
	}
	
	@ResponseBody
	@RequestMapping("/cart/clear")
	public void clear() {
		cart.clear();
	}
}
