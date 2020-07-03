package com.drug.test;
/**
 * MyBatis关联查询测试类
 * @author 13069
 *
 */

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.drug.po.Person;
import com.drug.util.MyBatisUtil;

public class MybatisAssociatedTest {
	/**
	 * 测试数据库连接人员表
	 */
	@Test
	public void findUserByid() {
		SqlSession session = MyBatisUtil.getSession();
		Person person = session.selectOne("com.drug.mapper."
				+ "PersonMapper.findPersonbyid",1);
		System.out.println(person);
		session.close();
	}
	
	@Test
	public void findUserAll() {
		SqlSession session = MyBatisUtil.getSession();
		List<Person> persons = session.selectList("com.drug.mapper.EmpMapper.findAll");
		for (Person person : persons) {
			System.out.println(person);
		}
		session.close();
	}
	
	/**
	 * 测试新增用户
	 */
	@Test
	public void addoneUser() {
		SqlSession session = MyBatisUtil.getSession();
		Person person = new Person();
		person.setPerpassword("1234567");
		person.setPername("周强");
		person.setPerphon("28282836455");
		person.setPeraddr("爱家居安静就安静安静");
		int rol = session.insert("com.drug.mapper."
				+ "PersonMapper.addPerson",person);
		session.commit();
		if (rol > 0) {
			System.out.println("新增成功");
		} else {
			System.out.println("新增失败");
		}
		session.close();
	}
	
	/**
	 * 测试修改用户
	 */
	@Test
	public void updateoneUser() {
		SqlSession session = MyBatisUtil.getSession();
		Person person = new Person();
		person.setPerid(6);
		person.setPerpassword("1234567");
		person.setPername("周抢");
		person.setPerphon("28282836455");
		person.setPeraddr("爱家居安静就安静安静");
		
		int rows = session.update("com.drug.mapper."
				+ "PersonMapper.updatePerson",person);
		session.commit();
		if (rows > 0) {
			System.out.println("更新成功");
		} else {
			System.out.println("更新失败");
		}
		session.close();
	}
	
	@Test
	public void deleteoneUser() {
		SqlSession session = MyBatisUtil.getSession();
		int rows = session.delete("com.drug.mapper."
				+ "PersonMapper.deletebyid",7);
		session.commit();
		if (rows > 0) {
			System.out.println("删除成功");
		} else {
			System.out.println("删除失败");
		}
		session.close();
	}
	
}
