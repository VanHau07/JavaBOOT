package com.nvh.SpringOneTech.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.nvh.SpringOneTech.interceptor.AuthorizelnterceptorAdmin;
import com.nvh.SpringOneTech.interceptor.Sharelnterceptor;


@Configuration
public class InterceptorConfigAdmin implements WebMvcConfigurer {
	@Autowired
	Sharelnterceptor share;

	@Autowired
	AuthorizelnterceptorAdmin auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(share).addPathPatterns("/**");

		registry.addInterceptor(auth).addPathPatterns(
				"/admin/home/index", 
				"/admin/product/index", 
				"/admin/category/index", 				
				"/admin/customer/index",
				"/admin/order/index", 
				"/admin/report/inventory",
				
				
				
				"/admin/report/revenue-by-category",
				"/admin/report/revenue-by-customer", 
				"/admin/report/revenue-by-month",
				"/admin/report/revenue-by-quarter", 
				"/admin/report/revenue-by-year",
				
				
				"/admin/inventory/index",
				"/admin/revenue/category",
				"/admin/revenue/customer",
				"/admin/revenue/month",
				"/admin/revenue/quarter",
				"/admin/revenue/year"	
			);
	}
}
