package com.nvh.SpringOneTech.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.nvh.SpringOneTech.interceptor.Authorizelnterceptor;
import com.nvh.SpringOneTech.interceptor.Sharelnterceptor;


public class InterceptorConfig implements WebMvcConfigurer {

	@Autowired
	Sharelnterceptor share;

	@Autowired
	Authorizelnterceptor auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(share).addPathPatterns("/**");

		registry.addInterceptor(auth).addPathPatterns(				
		"/account/change", 		
		"/account/logout",
		"/account/edit", 
		"/order/list",
		"/order/items",
		"/order/detail",
		"/order/checkout", 
		"/account/order/**");
		
	}
}