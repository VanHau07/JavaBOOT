package com.nvh.SpringOneTech.controller.admin;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nvh.SpringOneTech.controller.user.MailInfo;
import com.nvh.SpringOneTech.dao.IOrderDao;
import com.nvh.SpringOneTech.dao.IOrderDetailDao;
import com.nvh.SpringOneTech.dao.IUserDao;
import com.nvh.SpringOneTech.entity.Orders;
import com.nvh.SpringOneTech.service.MailService;



@Controller
public class OrdersManager {
	@Autowired
	IOrderDao dao;
	@Autowired
	MailService mailer;
	@Autowired
	IUserDao udao;

	@Autowired
	IOrderDetailDao ddao;
	@RequestMapping("/admin/order/index")
	public String index(Model model) {
		Orders entity = new Orders();

		model.addAttribute("entity", entity);
		model.addAttribute("details", ddao.findByOrder(entity));
		model.addAttribute("list", dao.findAll());

		return "admin/order/index";
	}

	@RequestMapping("/admin/order/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Orders entity = dao.findById(id);
		model.addAttribute("entity", entity);
		model.addAttribute("details", ddao.findByOrder(entity));
		model.addAttribute("list", dao.findAll());
		return "admin/order/index";
	}

	@RequestMapping("/admin/order/create")
	public String create(RedirectAttributes model, @ModelAttribute("entity") Orders entity) {
		dao.create(entity);
		model.addAttribute("message", "Thêm mới thành công!");
		return "redirect:/admin/order/index";
	}

	@RequestMapping("/admin/order/update")
	public String update(RedirectAttributes model, @ModelAttribute("entity") Orders entity) {
		dao.update(entity);

		String from = "hau1647310659@gmail.com";
		String to = entity.getEmail();
		String subject = "THÔNG BÁO!";
		String body = "Sản phẩm của bạn: " + entity.getStatus();
		MailInfo mail = new MailInfo(from, to, subject, body);
		try {
			mailer.send(mail);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("message", "Cập nhật thành công!");
		return "redirect:/admin/order/edit/" + entity.getId();
	}

	@RequestMapping(value = { "/admin/order/delete", "/admin/order/delete/{id}" })
	public String delete(RedirectAttributes model, @RequestParam(value = "id", required = false) Integer id1,
			@PathVariable(value = "id", required = false) Integer id2) {
		if (id1 != null) {
			ddao.delete(id1);
		} else {
			ddao.delete(id2);
		}

		model.addAttribute("message", "Xóa thành công!");
		return "redirect:/admin/order/index";
	}
}
