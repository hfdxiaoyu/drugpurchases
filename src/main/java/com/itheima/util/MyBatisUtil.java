package com.itheima.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	public static SqlSessionFactory sqlSessionFactory = null;
	static {
		try {
			//1.读取主配置文件
			String resource = "config/mybatis-config.xml";
			InputStream inputStream;
			inputStream = Resources.getResourceAsStream(resource);
			//2、根据配置文件构建SqlSessionFactory
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static SqlSession getSession() {
		return sqlSessionFactory.openSession();
	}
}
