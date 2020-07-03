package com.drug.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.drug.dao.PersonDao;
import com.drug.po.Person;
import com.drug.service.PersonService;
@Service
@Transactional
public class PersonServiceImpl implements PersonService {
	//注解注入PersonDao
	@Autowired
	private PersonDao pesonDao;
	//查询客户
	public Person findPersonbyid(int id) {
		return this.pesonDao.findPersonbyid(id);
	}

}
