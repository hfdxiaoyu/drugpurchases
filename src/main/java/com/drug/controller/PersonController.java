package com.drug.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.drug.po.Person;
import com.drug.service.EmpService;
import com.drug.service.PersonService;
import com.github.pagehelper.PageInfo;

@Controller
public class PersonController {
	
//	@Autowired
//	private PersonService personService;
//	@RequestMapping("/findPersonbyid")
//	public String findPersonbyid(int id,Model model) {
//		Person person = personService.findPersonbyid(id);
//		model.addAttribute("person", person);
//		return "person";
//	}
	
	public class EmpController {
		//依赖注入
		@Autowired
		private EmpService empService;

	    /**
	     * 分页插件使用
	     * @param pageNum 当前页
	     * @param model 作用域
	     * @return
	     */
		@RequestMapping("/fenye")
		public String fenye(Integer pageNum,Model model){
		    //判断前端查过来的是否为null
			if(pageNum==null){
				pageNum=1;
			}
			
			//每页条数
			Integer pageSize=5;	
			
			//从后台查询数据并返回分页对象传到ServiceImpl
			//pageNum 当前页、pageSize 每页条数
			PageInfo<Person> p=empService.fenye(pageNum,pageSize);
	        //将查出来的信息存储到Model作用域
	        model.addAttribute("p", p);
			
			return "list";
		}
		
	}
}

