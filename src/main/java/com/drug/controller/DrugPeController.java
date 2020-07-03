package com.drug.controller;

import java.util.List;

/**
 * 管理员页面的控制类
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import com.drug.po.Person;
import com.drug.util.MyBatisUtil;
import com.github.pagehelper.PageHelper;
import com.mysql.cj.xdevapi.Result;

@Controller
public class DrugPeController {

	/**
	 * 向管理员页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toadmin")
	public String toRegister() {
		return "admin";
	}

	@RequestMapping(value = "/toadmin1")
	public String toadMinmed() {
		return "adminmed";
	}

	@RequestMapping(value = "/toadmin2")
	public String adMinpo() {
		return "adminpo";
	}

	@RequestMapping(value = "/admin3")
	public String adMinsales() {
		return "adminsales";
	}

	@RequestMapping(value = "/tobuy")
	public String toBuy() {
		return "buy";
	}

	@RequestMapping(value = "/login2")
	public String toLogin1() {
		return "login1";
	}

	@RequestMapping(value = "/fenye3")
	public String toFenYe1() {
		return "fenye3";
	}

	@RequestMapping(value = "/hello")
	public String handleRequest(HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {
		SqlSession sqlSession = MyBatisUtil.getSession();
		Person person = sqlSession.selectOne("com.drug.mapper." + "PersonMapper.findPersonbyid", 2);
		System.out.println(person);
		model.addAttribute("person1", person);
		return "fenye1";
	}

}
