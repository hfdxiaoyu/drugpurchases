package com.itheima.test;
/**
 * MyBatis关联查询测试类
 * @author 13069
 *
 */

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.itheima.po.Person;
import com.itheima.util.MyBatisUtil;

public class MybatisAssociatedTest {
	@Test
	public void findParsonByIdTest(){
		SqlSession session = MyBatisUtil.getSession();
		Person person = session.selectOne("com.itheima.mapper."
				+ "PersonMapper.findPersonById", 1);
		System.out.println(person);
		session.close();
	}
	@Test
	public void findPersonByIdTest2() {
		SqlSession session = MyBatisUtil.getSession();
		Person person = session.selectOne("com.itheima.mapper."
				+ "PersonMapper.findPersonById2", 1);
		System.out.println(person);
		session.close();
	}
	
	
}
