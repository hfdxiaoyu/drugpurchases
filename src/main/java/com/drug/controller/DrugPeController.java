package com.drug.controller;
/**
 * 管理员页面的控制类
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import com.drug.po.Person;
import com.drug.util.MyBatisUtil;

@Controller
public class DrugPeController{
	/**
	 * 向用户注册页面跳转
	 * @return
	 */
	@RequestMapping("/toadmin")
	public String toRegister() {
		return "admin";
	}
@RequestMapping(value="/hello")
	public String handleRequest(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {
		SqlSession sqlSession = MyBatisUtil.getSession();
		Person person = sqlSession.selectOne("msg", 2);
		model.addAttribute("msg", "hahahhahaahha");
		return "admin";
	}

}
