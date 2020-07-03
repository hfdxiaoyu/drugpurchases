package com.drug.service.impl;

import org.apache.ibatis.session.SqlSession;

import com.drug.po.Person;
import com.drug.service.RegisterService;
import com.drug.util.MyBatisUtil;

public class RegisterServiceImpl implements RegisterService {

	@Override
	public int addPerson(Person person) {
		SqlSession session = MyBatisUtil.getSession();
		int rol = session.insert("com.drug.mapper."
				+ "PersonMapper.addPerson",person);
		session.commit();
		session.close();
		return rol;
	}

}
