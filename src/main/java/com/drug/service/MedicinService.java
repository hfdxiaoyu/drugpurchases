package com.drug.service;

import com.drug.po.Medicin;
import com.drug.util.Page;

public interface MedicinService {
	// 查询药品列表
	public Page<Medicin> findMedicinList(Integer page, Integer rows, String medName, Float medPrice, String medProduct);

	// 删除药品
	public int deleteMedicin(Integer id);
}
