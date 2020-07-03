package com.drug.dao;

import java.util.List;

import com.drug.po.Person;

public interface EmpMapper {
	 //查询所有的方法
	List<Person> findAll();
}
