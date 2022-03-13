package com.nvh.SpringOneTech.controller.user;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nvh.SpringOneTech.dao.ICategorysDao;
import com.nvh.SpringOneTech.dao.IProductsDao;
import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Menus;
import com.nvh.SpringOneTech.entity.Products;

@Controller
public class HomeController {
	@Autowired
	IProductsDao pdao;

	@Autowired
	ICategorysDao cdao;
	int id = 1;
	@RequestMapping(value = { "", "home" })
	@Transactional
	
	public String index(Model model) {
		List<Products> listPhone = pdao.findPhone();
		model.addAttribute("listPhone", listPhone);

		List<Products> listNew = pdao.findNew();
		model.addAttribute("listNew", listNew);

		List<Products> listLaptop = pdao.findLaptop();
		model.addAttribute("listLaptop", listLaptop);

		List<Products> listIpad = pdao.findIpad();
		model.addAttribute("listIpad", listIpad);

		List<Products> listWatch = pdao.findWatch();
		model.addAttribute("listWatch", listWatch);

		List<Products> listSound = pdao.findSound();
		model.addAttribute("listSound", listSound);

		List<Products> listView = pdao.findView();
		model.addAttribute("listView", listView);

		List<Products> listBest = pdao.findBest();
		model.addAttribute("listBest", listBest);


		List<Products> listHot = pdao.findHot();
		model.addAttribute("listHot", listHot);

		
		List<Categorys> listcate = cdao.findAll();
		model.addAttribute("listcate", listcate);

		List<Categorys> listpr = cdao.findParent();
		model.addAttribute("listpr", listpr);

	
		List<Categorys> listchildren = cdao.findChildren(id);
		model.addAttribute("listchildren", listchildren);

		List<Categorys> checkParent = cdao.check_parent(id);
		model.addAttribute("checkparent", checkParent);
		
		List<Menus> listMenu = pdao.findMenu();
		model.addAttribute("listMenu", listMenu);

		return "home/index";
	}
}