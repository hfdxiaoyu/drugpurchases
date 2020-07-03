package com.drug.service;

import org.springframework.stereotype.Service;

import com.drug.po.Person;
@Service
public interface RegisterService {
	/**
	 * 新增人员的方法接口on
	 * @return int
	 */
	public int addPerson(Person person);
}
