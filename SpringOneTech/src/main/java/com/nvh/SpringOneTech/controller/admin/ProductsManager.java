package com.nvh.SpringOneTech.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nvh.SpringOneTech.dao.IProductsDao;
import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Products;

@Controller
public class ProductsManager {
	@Autowired
	IProductsDao dao;

	@Autowired
	ServletContext app;

	@RequestMapping("/admin/product/index")
	public String index(Model model) {
		Products entity = new Products();
		model.addAttribute("entity", entity);
		entity.setThoi_gian(new Date());
		model.addAttribute("list", dao.findAll());
		List<Categorys> listscate = dao.listCategorys();
		model.addAttribute("listscate", listscate);

		return "admin/product/index";
	}
	
	@RequestMapping("/admin/product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Products entity = dao.findById(id);
		model.addAttribute("entity", entity);
		model.addAttribute("list", dao.findAll());
	

		return "admin/product/index";
	}

	@RequestMapping("/admin/product/create")
	public String create(RedirectAttributes model, @ModelAttribute("entity") Products entity,
			@RequestParam("image_file") MultipartFile file, @RequestParam("image_file1") MultipartFile file1,
			@RequestParam("image_file2") MultipartFile file2, @RequestParam("image_file3") MultipartFile file3,
			@RequestParam("image_file4") MultipartFile file4) throws IllegalStateException, IOException {
		if (file.isEmpty()) {
			entity.setHinh_anh("capnhat.jpg");
		}
		if (!file.isEmpty()) {
			entity.setHinh_anh(file.getOriginalFilename());
			String path = app.getRealPath("/static/resources/images/" + entity.getHinh_anh());
			file.transferTo(new File(path));
			if (!file1.isEmpty()) {
				entity.setDetail_image(file1.getOriginalFilename());
				String path1 = app.getRealPath("/static/resources/images/" + entity.getDetail_image());
				file1.transferTo(new File(path1));
			}
			if (!file2.isEmpty()) {
				entity.setAnh_1(file2.getOriginalFilename());
				String path2 = app.getRealPath("/static/resources/images/" + entity.getAnh_1());
				file2.transferTo(new File(path2));
			}
			if (!file3.isEmpty()) {
				entity.setAnh_2(file3.getOriginalFilename());
				String path3 = app.getRealPath("/static/resources/images/" + entity.getAnh_2());
				file3.transferTo(new File(path3));
			}
			if (!file4.isEmpty()) {
				entity.setAnh_3(file4.getOriginalFilename());
				String path4 = app.getRealPath("/static/resources/images/" + entity.getAnh_3());
				file4.transferTo(new File(path4));
			}
		}
		dao.create(entity);
		model.addAttribute("message", "Thêm mới thành công!");
		return "redirect:/admin/product/index";
	}

	@RequestMapping("/admin/product/update")
	public String update(RedirectAttributes model, @ModelAttribute("entity") Products entity,
			@RequestParam("image_file") MultipartFile file, @RequestParam("image_file1") MultipartFile file1,
			@RequestParam("image_file2") MultipartFile file2, @RequestParam("image_file3") MultipartFile file3,
			@RequestParam("image_file4") MultipartFile file4) throws IllegalStateException, IOException {
		if (!file.isEmpty()) {
			entity.setHinh_anh(file.getOriginalFilename());
			String path = app.getRealPath("/static/resources/images/" + entity.getHinh_anh());
			file.transferTo(new File(path));
		}
		if (!file1.isEmpty()) {
			entity.setDetail_image(file1.getOriginalFilename());
			String path = app.getRealPath("/static/resources/images/" + entity.getDetail_image());
			file1.transferTo(new File(path));
		}
		if (!file2.isEmpty()) {
			entity.setAnh_1(file2.getOriginalFilename());
			String path = app.getRealPath("/static/resources/images/" + entity.getAnh_1());
			file2.transferTo(new File(path));
		}
		if (!file3.isEmpty()) {
			entity.setAnh_2(file3.getOriginalFilename());
			String path = app.getRealPath("/static/resources/images/" + entity.getAnh_2());
			file3.transferTo(new File(path));
		}
		if (!file4.isEmpty()) {
			entity.setAnh_3(file4.getOriginalFilename());
			String path = app.getRealPath("/static/resources/images/" + entity.getAnh_3());
			file4.transferTo(new File(path));
		}
		dao.update(entity);
		model.addAttribute("message", "Cập nhật thành công!");
		return "redirect:/admin/product/edit/" + entity.getId();
	}

	@RequestMapping(value = { "/admin/product/delete", "/admin/product/delete/{id}" })
	public String delete(RedirectAttributes model, @RequestParam(value = "id", required = false) Integer id1,
			@PathVariable(value = "id", required = false) Integer id2) {
		if (id1 != null) {
			dao.delete(id1);
		} else {
			dao.delete(id2);
		}

		model.addAttribute("message", "Xóa thành công!");
		return "redirect:/admin/product/index";
	}

}
