package com.nvh.SpringOneTech.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.nvh.SpringOneTech.dao.ICategorysDao;
import com.nvh.SpringOneTech.dao.IUserDao;
import com.nvh.SpringOneTech.entity.Categorys;
import com.nvh.SpringOneTech.entity.Users;


@Component
public class Sharelnterceptor extends HandlerInterceptorAdapter {

	@Autowired
	ICategorysDao dao;

	@Autowired
	IUserDao userDAO;
		
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		List<Categorys> listscate = dao.findAll();
		modelAndView.addObject("listscate", listscate);

		List<Users> listUser = userDAO.findAll();
		modelAndView.addObject("users", listscate);
	}

}
