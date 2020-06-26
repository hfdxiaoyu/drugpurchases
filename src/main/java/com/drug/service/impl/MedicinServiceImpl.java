package com.drug.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drug.dao.MedicinDao;
import com.drug.po.Medicin;
import com.drug.service.MedicinService;
import com.drug.util.Page;
import com.mysql.cj.util.StringUtils;

/**
 * 药品管理
 */
@Service("medicinService")
@Transactional
public class MedicinServiceImpl implements MedicinService {
	// 声明DAO属性并注入
	@Autowired
	private MedicinDao medicinDao;

	// 药品列表
	public Page<Medicin> findMedicinList(Integer page, Integer rows, String medName, Float medPrice,
			String medProduct) {
		// 创建药品对象
		Medicin medicin = new Medicin();

		// 判断药品名称
//		if (StringUtils.isNotBlank(medName)) {
//			medicin.setMedname(medName);
//		}
		// 判断药品价格
///////////////////////////////////////////////////////
		// 判断药品生产商
//		if (StringUtils.isNotBlank(medProduct)) {
//			medicin.setMedproduct(medProduct);
//		}
		// 当前页
		medicin.setStart((page) - 1 * rows);
		// 每页数
		medicin.setRows(rows);
		// 查询药品列表
		List<Medicin> medicins = medicinDao.selectMedicinList(medicin);
		// 查询药品列表总数
		Integer count = medicinDao.selectMedicinListCount(medicin);
		// 创建Page返回对象
		Page<Medicin> result = new Page<>();
		result.setPage(page);
		result.setRows(medicins);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
/**
 * 删除药品
 */
	@Override
	public int deleteMedicin(Integer id) {
		
		return medicinDao.deleteMedicin(id);
	}

}
