package com.drug.service;

import java.util.List;

import com.drug.po.Person;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

public interface EmpService {
	 /**
     * 封装pageInfo对象传入Emp对象
     * @param pageNum 当前页
     * @param pageSize 每页条数
     * @return
     */
	PageInfo<Person> fenye(Integer pageNum, Integer pageSize);
	}
		

