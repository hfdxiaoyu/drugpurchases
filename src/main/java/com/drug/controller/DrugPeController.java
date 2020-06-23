package com.drug.controller;
/**
 * 管理员页面的控制类
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping(value="/drug")
public class DrugPeController{

	@RequestMapping(value="/drugadmin")
	public String handleRequest(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {
		 model.addAttribute("msg", "哈哈哈哈哈哈哈");
		return "/WEB-INF/jsp/admin"+".jsp";
	}

}
