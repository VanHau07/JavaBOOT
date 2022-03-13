package com.nvh.SpringOneTech.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nvh.SpringOneTech.dao.ICategorysDao;
import com.nvh.SpringOneTech.dao.IUserDao;
import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Users;
import com.nvh.SpringOneTech.service.CookieService;
import com.nvh.SpringOneTech.service.MailService;





@Controller
public class AccountController {

	@Autowired
	IUserDao dao;
	@Autowired
	ICategorysDao cdao;
	@Autowired
	HttpSession session;

	@Autowired
	CookieService cookie;

	@Autowired
	ServletContext app;

	@Autowired
	MailService mailer;

	@Autowired
	HttpServletRequest request;


	@GetMapping(value = { "account/dang_ky", "account/register" })
	public String Register(Model model) {
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		Users user = new Users();
		model.addAttribute("form", user);
		return "account/register";
	}
	

	@PostMapping("/account/register")
	public String register(Model model, @Validated @ModelAttribute("form") Users user, BindingResult errors,
			@RequestParam("photo_file") MultipartFile file)
			throws IllegalStateException, IOException, MessagingException {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Error");
			return "account/register";
		} else {
			Users user2 = dao.findById(user.getId_user());
			if (user2 != null) {
				model.addAttribute("message", "Tên đăng nhập đã được sử dụng!");
				return "account/register";
			}
		}

		if (file.isEmpty()) {
			user.setImages("tải xuống.jpg");
		} else {
			String dir = app.getRealPath("/static/user/img/users/");
			File f = new File(dir, file.getOriginalFilename());
			file.transferTo(f);
			user.setImages(f.getName());
		}
		user.setActivated(false);
		user.setAdmin(false);
		dao.create(user);
		model.addAttribute("message", "Đăng ký thành công. Vui lòng kiểm tra mail để kích hoạt tài khoản!");

		String from = "dinhnhi08it@gmail.com";
		String to = user.getEmail();
		String subject = "Welcome!";
		String url = request.getRequestURL().toString().replace("register", "activate/" + user.getId_user());
		String body = "Kính Chào Quý Khách! Vui lòng nhấn vào <a href='" + url
				+ "'>Activate</a> để kích hoạt tài khoản.";
		MailInfo mail = new MailInfo(from, to, subject, body);
		mailer.send(mail);

		return "account/register";
	}
	
	@GetMapping(value = { "account", "account/login" , "account/account/login" })
	public String login(Model model) {
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		Cookie ckid = cookie.read("userid");
		Cookie ckpw = cookie.read("pass");
		if (ckid != null) {
			String uid = ckid.getValue();
			String pwd = ckpw.getValue();

			model.addAttribute("uid", uid);
			model.addAttribute("pwd", pwd);
		}
		return "account/login";
	}
	
	@GetMapping("/account/activate/{id}")
	public String activate(Model model, @PathVariable("id") String id) {
		Users user = dao.findById(id);
		user.setActivated(true);
		dao.update(user);
		return "redirect:/account/login";
	}
	@PostMapping("/account/login")
	public String login(Model model, @RequestParam("id") String id, @RequestParam("pw") String pw,
			@RequestParam(value = "rm", defaultValue = "false") boolean rm) {

		Users user = dao.findById(id);
		if (user == null) {
			model.addAttribute("message", "Sai tên đăng nhập hoặc mật khẩu!");
		} else if (!pw.equals(user.getPassword())) {
			model.addAttribute("message", "Sai mật khẩu!");

		} else if (!user.getActivated()) {
			model.addAttribute("message", "Tài khoản chưa được kích hoạt!");
		} /*
			 * else if (user.getAdmin()) { model.addAttribute("message",
			 * "Bạn không có quyền!"); }
			 */else {
			model.addAttribute("message", "Đăng nhập thành công!");
			session.setAttribute("user", user);

			if (rm == true) {
				cookie.create("pass", user.getPassword(), 30);
			} else {
				cookie.delete("userid");
				cookie.delete("pass");
			}

			String backUrl = (String) session.getAttribute("back-url");
			if (backUrl != null) {
				return "redirect:" + backUrl;
			}
			session.setAttribute("infor", user);
			return "redirect:/home";
		}
		return "account/login";
	}


	@GetMapping("/account/forgot")
	public String forgot(Model model) {
		return "account/forgot";
	}

	@PostMapping("/account/forgot")
	public String forgot(Model model, @RequestParam("id") String id, @RequestParam("email") String email)
			throws MessagingException {
		Users user = dao.findById(id);
		if (user == null) {
			model.addAttribute("message", "Tên tài khoản không đúng!");
		} else if (!email.equals(user.getEmail())) {
			model.addAttribute("message", "Email không đúng!");
		} else {
			String from = "haunguyenvanit07@gmail.com";
			String to = user.getEmail();
			String subject = "Quên mật khẩu!";
			String body = "Xin chào! Mật khẩu của bạn là: " + user.getPassword();
			MailInfo mail = new MailInfo(from, to, subject, body);
			mailer.send(mail);
			model.addAttribute("message", "Mật khẩu đã được gửi đến mail của bạn!");

		}
		return "account/forgot";
	}

	@GetMapping("/account/logout")
	public String logout(Model model) {
		session.removeAttribute("user");
		session.removeAttribute("infor");
		return "redirect:/home";
	}

	
	@GetMapping("/account/profile")
	public String edit(Model model) {
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		Users user = (Users) session.getAttribute("user");
		model.addAttribute("form", user);

		return "account/profile";
	}

	@PostMapping("/account/profile")
	public String edit(Model model, @ModelAttribute("form") Users user, BindingResult errors,
			@RequestParam("photo_file") MultipartFile file)
			throws IllegalStateException, IOException, MessagingException {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây!");
			return "account/profile";
		}
		if (!file.isEmpty()) {
			String dir = app.getRealPath("static/images/customers");
			File f = new File(dir, file.getOriginalFilename());
			file.transferTo(f);
			user.setImages(f.getName());
		}
		dao.update(user);
		session.setAttribute("user", user);
		model.addAttribute("message", "Cập nhật tài khoản thành công!");
		return "account/profile";
	}

	@GetMapping("/account/change")
	public String change(Model model) {
		List<Categorys> listscate = cdao.findAll();
		model.addAttribute("listscate", listscate);
		Users user = (Users) session.getAttribute("user");
		model.addAttribute("form", user);

		return "account/change";
	}

	@PostMapping("/account/change")
	public String change(Model model, @ModelAttribute("form") Users users, @RequestParam("id_user") String id,
			@RequestParam("pw") String pw, @RequestParam("pw1") String pw1, @RequestParam("pw2") String pw2) {
		if (!pw1.equals(pw2)) {
			model.addAttribute("message", "Xác nhận mật khẩu không trùng khớp!");
		} else {
			Users user = dao.findById(id);
			if (user == null) {
				model.addAttribute("message", "Sai tài khoản!");
			} else if (!pw.equals(user.getPassword())) {
				model.addAttribute("message", "Mật khẩu hiện tại không đúng!");
			} else {
				user.setPassword(pw1);
				dao.update(user);

				model.addAttribute("message", "Thay đổi mật khẩu thành công!");
			}
		}
		return "account/change";
	}
}
