package com.nvh.SpringOneTech.controller.user;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.nvh.SpringOneTech.dao.ICategorysDao;
import com.nvh.SpringOneTech.dao.IOrderDao;
import com.nvh.SpringOneTech.dao.IOrderDetailDao;
import com.nvh.SpringOneTech.dao.IProductsDao;
import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Menus;
import com.nvh.SpringOneTech.entity.Order_details;
import com.nvh.SpringOneTech.entity.Orders;
import com.nvh.SpringOneTech.entity.Products;
import com.nvh.SpringOneTech.entity.Users;
import com.nvh.SpringOneTech.service.CartService;

@Controller
public class OrderController {

	@Autowired
	ICategorysDao cdao;

	@Autowired
	HttpSession session;

	@Autowired
	CartService cart;

	@Autowired
	IOrderDao dao;

	@Autowired
	IProductsDao pdao;
	
	@Autowired
	IOrderDetailDao ddao;

	@GetMapping("/order/checkout")
	public String showForm(Model model,@ModelAttribute("order") Orders order) {
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		List<Menus> listMenu = pdao.findMenu();
		model.addAttribute("listMenu", listMenu);
		Users user = (Users) session.getAttribute("user");
		order.setId(1);
		order.setNgaydat(new Date());
		order.setUsers(user);
		order.setTien(cart.getAmount());
		order.setStatus("Chưa giao hàng");
		return "order/checkout";

	}
	

	@PostMapping("/order/checkout")
	public String purchase(Model model, @ModelAttribute("order") Orders order) {
	
		Collection<Products> list = cart.getItems();
		List<Order_details> details = new ArrayList<>();
		for (Products product : list) {
			Order_details detail = new Order_details();
			detail.setOrders(order);
			detail.setProducts(product);
			detail.setGiaban(product.getGia_goc());
			detail.setSoluongban(product.getSoluong());
			detail.setGiamgia(product.getMa_giam());
			details.add(detail);
		}
		dao.create(order, details);
		cart.clear();

		model.addAttribute("message", "Đặt hàng thành công!");

		return "redirect:/order/list";

	}

	@GetMapping("/order/list")
	public String list(Model model) {
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		List<Menus> listMenu = pdao.findMenu();
		model.addAttribute("listMenu", listMenu);
		Users user = (Users) session.getAttribute("user");
		List<Orders> orders = dao.findByUser(user);
		model.addAttribute("orders", orders);
		return "order/list";
	}

	@GetMapping("/order/detail/{id}")
	public String detail(Model model, @PathVariable("id") Integer id) {
		Orders order = dao.findById(id);
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		List<Menus> listMenu = pdao.findMenu();
		model.addAttribute("listMenu", listMenu);
		List<Order_details> details = ddao.findByOrder(order);
		model.addAttribute("order", order);
		model.addAttribute("details", details);
		return "order/detail";
	}

	/*
	 * @GetMapping("/order/items") public String items(Model model) { Users user =
	 * (Users) session.getAttribute("user"); List<Products> list =
	 * dao.findItemsByUser(user); model.addAttribute("list", list); return
	 * "oder/list_order_item"; }
	 */
}
