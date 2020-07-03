package com.drug.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.drug.dao.EmpMapper;
import com.drug.po.Person;
import com.drug.service.EmpService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class EmpServiceImpl implements EmpService {
	//依赖注入
		@Autowired
		private EmpMapper empMapper;

	    /**
	     * @param pageNum 当前页
	     * @param pageSize 每页条数
	     * @return
	     */
		@Override
		public PageInfo<Person> fenye(Integer pageNum, Integer pageSize) {
		
			//开启分页
			PageHelper.startPage(pageNum,pageSize);
			
			//获取查询数据放入分页对象、
	        // 查询时无需关注查询的条数 不需要向Dao层中的方法传入limit后边的两个参数 (limit 1 ,5)
	        //调用Dao层方法
			List<Person> list=empMapper.findAll();

			///封装pageInfo对象并返回   PageInfo可以看到源码你就明白所有意思
			PageInfo<Person> p=new PageInfo<Person>(list);
			
			return p;
		}
}
