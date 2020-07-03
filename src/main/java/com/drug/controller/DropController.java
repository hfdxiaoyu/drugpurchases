package com.drug.controller;
/**
 * 登录注册控制类
 */
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.drug.po.Person;
import com.drug.service.RegisterService;
import com.drug.service.impl.RegisterServiceImpl;

@Controller
public class DropController {
	/**
	 * 登录页面跳转
	 */
	@RequestMapping(value="login4")
	public String toLogin() {
		return "login2";
	}
	/**
	 * 注册页面跳转
	 * @return
	 */
	@RequestMapping(value="regist4")
	public String toRegist() {
		return "regist2";
	}
	/**
	 * 注册功能实现
	 * @return
	 */
	
	@RequestMapping(value="registss")
	public String goRegist(HttpServletRequest request) {
		Person person = new Person();
		RegisterService registerService = new RegisterServiceImpl();
		String password2 = request.getParameter("password1");//从请求中获取用户密码
		String name2 = request.getParameter("username");//从请求中获取用户名
		String phon2 = request.getParameter("phone");//从请求中获取用户电话号码
		String site2 = request.getParameter("email");//从请求中获取用户地址
		System.out.println(password2);
		System.out.println(name2);
		System.out.println(phon2);
		System.out.println(site2);
		//把从前端传来的消息存入实体类中
		person.setPerpassword(password2);
		person.setPername(name2);
		person.setPerphon(phon2);
		person.setPeraddr(site2);
		int rols = registerService.addPerson(person);
		if (rols > 0) {
			System.out.println("新增成功");
			return "registsuccess";
		} else {
			System.out.println("新增失败");
			return "regist4";
		}
		
	}
}
