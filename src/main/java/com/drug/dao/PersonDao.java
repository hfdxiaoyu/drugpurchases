package com.drug.dao;

import com.drug.po.Person;

/**
 * 人员类的Dao层接口
 * @author 13069
 *
 */



public interface PersonDao {
	 /**
	  * 根据id查询用户信息
	  * @param id
	  * @return
	  */
	public Person findPersonbyid(int id);
}
