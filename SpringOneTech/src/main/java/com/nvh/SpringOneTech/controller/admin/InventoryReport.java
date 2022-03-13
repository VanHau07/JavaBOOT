package com.nvh.SpringOneTech.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nvh.SpringOneTech.dao.IReportDao;



@Controller
public class InventoryReport{
	@Autowired
	IReportDao dao;
	
	@RequestMapping("/admin/revenue/customer")
	public String revenueByCustomer(Model model) {
		model.addAttribute("data", dao.revenueByCustomer());
		return "admin/inventory/revenue-by-customer";
	}
	
	@RequestMapping("/admin/revenue/year")
	public String revenueByYear(Model model) {
		model.addAttribute("data", dao.revenueByYear());
		return "admin/inventory/revenue-by-year";
	}
	
	
	@RequestMapping("/admin/revenue/month")
	public String revenueByMonth(Model model) {
		model.addAttribute("data", dao.revenueByMonth());
		return "admin/inventory/revenue-by-month";
	}

	
}
